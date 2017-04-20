require 'rails_helper'

describe 'Experiment' do
  describe 'Experiment Show Page', js: true do
    it 'displays an experiments title' do
      visit '/experiments/1'
      expect(page).to have_content "Article Title"
    end

    xit 'displays the sign-up button, redirects back to the experiment show page and shows the users name at the bottom of the staff list' do
    end


  end
end
