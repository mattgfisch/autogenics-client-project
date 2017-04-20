require 'rails_helper'

describe 'Experiment' do
  feature 'Post a New Experiment' do
    it 'is able to display a new experiment form' do
      visit '/experiment/index'
      click_on 'Post A New Experiment'
      expect(page).to have_content "Post A New Experiment"
    end

    it 'is able to fill out the new experiment form'
  end
end
