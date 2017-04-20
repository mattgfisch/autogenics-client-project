require 'rails_helper'

RSpec.describe User, type: :model do

  describe "associations" do
    let (:josh) { User.new(name: "Josh", email: "email@email.com", password: "password") }
    let(:austin) { User.new(name: "Austin", email: "email@email.com", password: "password") }
    let (:peas) { Experiment.create!(title: "Peas and Carrots", content: "Tattoos are cool") }
    context 'roles' do


      it 'has a role as faculty' do
        josh.role = Role.create!(name: "Faculty")
        josh.save
        expect(josh.clearance_levels).to eq "Faculty"
      end

      it 'has a role as staff' do
        austin.role = Role.create!(name: "Faculty")
        austin.save
        expect(austin.clearance_levels).to eq "Faculty"
      end
    end

    context 'user and experiments associations' do
      it "author has many experiments posted" do
        josh.role = Role.create!(name: "Faculty")
        josh.save
        Experiment.create!(title: "Study in Scarlet", content: "Sherlock Holmes", author_id: josh.id)
        expect(josh.experiments_posted.count).to eq 1
      end

      it "experiments have one author" do
        josh.role = Role.create!(name: "Faculty")
        josh.save
        experiment = Experiment.create!(title: "Study in Scarlet", content: "Sherlock Holmes", author_id: josh.id)
        expect(experiment.author).to eq josh
      end

      it "experiments have many staff" do
        austin.role = Role.create!(name: "Staff")
        austin.save
        experiment = Experiment.create!(title: "Study in Scarlet", content: "Sherlock Holmes", author_id: austin.id)
        experiment.staff << austin
        expect(experiment.staff.first).to eq austin
      end

      it "staff have many experiments" do
        austin.role = Role.create!(name: "Staff")
        austin.save
        experiment = Experiment.create!(title: "Study in Scarlet", content: "Sherlock Holmes", author_id: austin.id)
        experiment.staff << austin
        expect(austin.experiments_joined.first).to eq experiment
      end


    end
  end
end
