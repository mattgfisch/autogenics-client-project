require 'rails_helper'

describe 'Entire App' do
  feature 'Navigates through the app', js: true do
    let!(:faculty) { Role.create!(name: "Faculty") }
    let!(:user) { User.create!(name: "Josh", email: "email@email.com", password: "password", role_id: faculty.id) }

    it 'is able to display the root page with an empty div' do
      visit '/'
      expect(page).to have_content ""
    end

    it 'is able to click on the register button, register and render the experiment index page' do
      visit '/'
      click_on 'Register'
      fill_in 'user_name', with: "Tester Name"
      fill_in 'user_email', with: "tester23@test.com"
      fill_in 'user_password', with: "password"
      fill_in 'user_access_token', with: "abc123"
      click_on "Create"
      expect(find('#ajax-content').find('h1')).to have_content('Autogenics Experiments List')
    end

    it 'is able to render the login form' do
      visit '/'
      click_on "Faculty"
      fill_in 'post_email', with: "email@email.com"
      fill_in 'post_password', with: "password"
      click_on "Login"
      sleep(2)
      expect(find('#ajax-content').find('h1')).to have_content('Autogenics Experiments List')
    end

    it 'after logging in, it is able to click on a new experiment post, render the template, fill out the template and then show the new experiments details' do
      visit '/'
      click_on "Faculty"
      fill_in 'post_email', with: "email@email.com"
      fill_in 'post_password', with: "password"
      click_on "Login"
      click_on "Post New Experiment"
      sleep(2)
      fill_in "Title", with: "Testing Title"
      fill_in "experiment_staff_size", with: "5"
      click_on "Post Experiment"
      sleep(2)
      expect(find('#ajax-content').find('h1')).to have_content('Testing Title')
    end
  end
end
