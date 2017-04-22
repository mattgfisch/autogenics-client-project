require 'rails_helper'

describe 'Entire App' do
  feature 'Navigates through the app', js: true do
    let!(:faculty) { Role.create!(name: "Faculty") }
    let!(:staff) { Role.create!(name: "Staff") }
    let!(:user) { User.create!(name: "Josh", email: "email@email.com", password: "password", role_id: faculty.id) }
    let!(:s_user) { User.create!(name: "Joe", email: "joe@email.com", password: "password", role_id: staff.id) }
    let!(:staff_user_new) { User.create!(name: "Jane", email: "jane@email.com", password: "password", role_id: staff.id) }
    let!(:new_experiment) { Experiment.create!( title: Faker::Lorem.sentence,
                                                abstract: Faker::Lorem.paragraph,
                                                introduction: Faker::Lorem.paragraph,
                                                materials: Faker::Lorem.paragraph,
                                                results: Faker::Lorem.paragraph,
                                                discussion: Faker::Lorem.paragraph,
                                                conclusion: Faker::Lorem.paragraph,
                                                supporting_info: Faker::Lorem.paragraph,
                                                acknowledgments: Faker::Lorem.paragraph,
                                                references: Faker::Lorem.paragraph,
                                                author_contributions: Faker::Lorem.paragraph,
                                                author_id: user.id,
                                                staff_size: 10)
                            }
   let!(:new_experiment_two) { Experiment.create!( title: Faker::Lorem.sentence,
                                                abstract: Faker::Lorem.paragraph,
                                                introduction: Faker::Lorem.paragraph,
                                                materials: Faker::Lorem.paragraph,
                                                results: Faker::Lorem.paragraph,
                                                discussion: Faker::Lorem.paragraph,
                                                conclusion: Faker::Lorem.paragraph,
                                                supporting_info: Faker::Lorem.paragraph,
                                                acknowledgments: Faker::Lorem.paragraph,
                                                references: Faker::Lorem.paragraph,
                                                author_contributions: Faker::Lorem.paragraph,
                                                author_id: user.id,
                                                staff_size: 10)
                            }

    it 'is able to display the root page with an empty div' do
      visit '/'
      expect(page).to have_content ""
    end

    it 'is able to click on the register button, register and render the experiment index page as a faculty' do
      visit '/'
      click_on 'Register'
      fill_in 'user_name', with: "Tester Name"
      fill_in 'user_email', with: "tester23@test.com"
      fill_in 'user_password', with: "password"
      fill_in 'user_access_token', with: "abc123"
      click_on "Create"
      expect(find('#ajax-content').find('h1')).to have_content('Autogenics Experiments List')
    end
    it 'is able to click on the register button, register and render the experiment index page as a staff' do
      visit '/'
      click_on 'Register'
      fill_in 'user_name', with: "Tester Name Staff"
      fill_in 'user_email', with: "tester24@test.com"
      fill_in 'user_password', with: "password"
      fill_in 'user_access_token', with: "123abc"
      click_on "Create"
      expect(find('#ajax-content').find('h1')).to have_content('Autogenics Experiments List')
    end

    it 'is able to click on the register button, not register' do
      visit '/'
      click_on 'Register'
      fill_in 'user_name', with: "Tester Name"
      fill_in 'user_password', with: "password"
      fill_in 'user_access_token', with: "abc123"
      click_on "Create"
      expect(find('#ajax-content').find('.errors-block')).to have_content('Registration information not valid.')
    end

    it 'is able to render the login form' do
      visit '/'
      click_on "Faculty"
      fill_in 'post_email', with: "email@email.com"
      fill_in 'post_password', with: "password"
      click_on "Login"
      expect(find('#ajax-content').find('h1')).to have_content('Autogenics Experiments List')
    end

    it 'is unable to login with bad information' do
      visit '/'
      click_on "Faculty"
      fill_in 'post_email', with: "bad@email.com"
      fill_in 'post_password', with: "password"
      click_on "Login"
      expect(find('#ajax-content').find('.errors-block')).to have_content('Incorrect email or password.')
    end

    it 'after logging in, it is able to click on a new experiment post, render the template, fill out the template and then show the new experiments details' do
      visit '/'
      click_on "Faculty"
      fill_in 'post_email', with: "email@email.com"
      fill_in 'post_password', with: "password"
      click_on "Login"
      click_on "Post New Experiment"
      fill_in "Title", with: "Testing Title"
      fill_in "experiment_staff_size", with: "5"
      click_on "Post Experiment"
      expect(find('#ajax-content').find('h1')).to have_content('Testing Title')
    end

    it 'after logging in, it is able to click on a new experiment post, render the template, fill out the template with missing info and show error message' do
      visit '/'
      click_on "Faculty"
      fill_in 'post_email', with: "email@email.com"
      fill_in 'post_password', with: "password"
      click_on "Login"
      click_on "Post New Experiment"
      fill_in "Title", with: "Testing Title Again"
      click_on "Post Experiment"
      expect(find('#ajax-content').find('#create-exp')).to have_content('Missing and/or incorrect information')
    end

    it 'clicks on an experiment and shows the details after logging in' do
      visit '/'
      click_on "Faculty"
      fill_in 'post_email', with: "email@email.com"
      fill_in 'post_password', with: "password"
      click_on "Login"
      click_on ("#{new_experiment.title}")
      expect(find('#ajax-content').find('h1')).to have_content("#{new_experiment.title}")
    end

    it 'signs in as a staff' do
      visit '/'
      click_on "Staff"
      fill_in 'post_email', with: "joe@email.com"
      fill_in 'post_password', with: "password"
      click_on "Login"
      expect(find('#ajax-content').find('h1')).to have_content('Autogenics Experiments List')
    end

    it 'adds a staff member to the staff list' do
      visit '/'
      click_on "Staff"
      fill_in 'post_email', with: "jane@email.com"
      fill_in 'post_password', with: "password"
      click_on "Login"
      click_on ("#{new_experiment_two.title}")
      sleep(5)
      click_on "Sign Up For Experiment!"
      expect(find('#ajax-content').find('.list-staff')).to have_content('Jane')
    end
  end
end
