require 'rails_helper'

feature 'valid user', { js: true } do

  scenario 'adds scout' do

      sign_in

      Fabricate(:troop, number: 261)

      # put this after fabricate before fill-in to make it work
      visit new_scout_path

      fill_in 'Full name', with: 'Toby Smith'
      select '1', from: 'scout[troop_id]'

      click_button 'Add Scout'

      expect(page).to have_content 'Toby Smith'
      expect(page).to have_content '261'
    end
end