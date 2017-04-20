require 'rails_helper'

RSpec.describe User, type: :model do
      let (:faculty ) { Role.create!(name: "Faculty") }
      let (:staff) { Role.create!(name: "Staff") }
      let (:josh) {User.create!(name: "Josh", email: "email@email.com", password: "password", role_id: 1)}
      let (:austin) {User.create!(name: "Austin", email: "email@email.com", password: "password", role_id: 2)}
      let (:sherlock) { Experiment.create!(title: "Study in Scarlet", content: "Sherlock Holmes", author_id: josh.id) }
      let (:peas) { Experiment.create!(title: "Peas and Carrots", content: "Tattoos are cool", author_id: josh.id) }


  describe "associations" do
    context 'roles' do
      it 'has a role as faculty' do
        expect(josh.clearance_levels).to eq "Faculty"
      end

      it 'has a role as staff' do
        expect(austin.clearance_levels).to eq "Staff"
      end
    end

    context 'user and experiments associations' do
      xit "user has many experiments" do
        # p josh
        expect(josh.experiments.count).to eq 2
      end
    end
  end
end
