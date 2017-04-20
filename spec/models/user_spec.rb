require 'rails_helper'

RSpec.describe User, type: :model do

  describe "associations" do
    
    let (:josh) { User.new(name: "Josh", email: "email@email.com", password: "password") }
    let(:austin) { User.new(name: "Austin", email: "email@email.com", password: "password") }
    before(:each) do
      josh.role = Role.create!(name: "Faculty")
      josh.save
    end

    context 'roles' do
      it 'has a role as faculty' do
        expect(josh.clearance_levels).to eq "Faculty"
      end

      it 'has a role as staff' do
          austin.role = Role.create!(name: "Faculty")
          austin.save
        expect(austin.clearance_levels).to eq "Faculty"
      end
    end

    before(:each) do
      austin.role = Role.create!(name: "Staff")
      austin.save
    end

    let (:experiment) { Experiment.create!(title: "Study in Scarlet", content: "Sherlock Holmes", author_id: josh.id) }

    context 'user and experiments associations' do
      it "author has many experiments posted" do
        experiment
        expect(josh.experiments_posted.count).to eq 1
      end

      it "experiments have one author" do
        expect(experiment.author).to eq josh
      end

      it "experiments have many staff" do
        experiment.author_id = austin.id
        experiment.staff << austin
        expect(experiment.staff.first).to eq austin
      end

      it "staff have many experiments" do
        experiment.author_id = austin.id
        experiment.staff << austin
        expect(austin.experiments_joined.first).to eq experiment
      end
    end
  end
end
