require 'rails_helper'

describe ExperimentsController do
  let!(:faculty) { Role.create!(name: "Faculty") }
  let!(:josh) { User.create!(name: "Josh", email: "email@email.com", password: "password", role_id: faculty.id) }
  let!(:experiment) { Experiment.create!( title: Faker::Lorem.sentence,
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
                    author_id: josh.id) }

  describe 'GET #index' do
    it 'renders the :index template' do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe 'GET #show' do
    it 'responds with a status code of 200' do
      get :show , params: { id: experiment.id }
      expect(response.status).to eq 200
    end
  end

  describe "GET #new" do
    before(:each) do
      get :new
    end

    it 'responds with a status code 200' do
      expect(response.status).to eq 200
    end

    it 'renders the :new template for an experiment' do
      expect(response).to render_template(:new)
    end
  end

  describe 'POST #create' do
    it "raises an exception" do
      expect{ post(:create, {}) }.to raise_error ActionController::ParameterMissing
    end

    it 'creates an experiment' do
      faculty =  Role.create!(name: "Faculty")
      john = User.create!(name: "John", email: "email2@email.com", password: "password", role_id: faculty.id)
      post :create, params: {experiment: { title: 'Awesome Article', abstract: 'abstract goes here', author_id: john.id } }
      p josh.id
      expect(response.status).to eq 302
    end
  end

end
