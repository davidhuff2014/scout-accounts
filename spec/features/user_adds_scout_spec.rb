require 'rails_helper'

feature 'user adds scout' do

  scenario 'valid user adds scout', { js: true } do

      sign_in

      troop = Fabricate(:troop, troop_number: 261)
      scout = Fabricate(:scout, troop_id: troop.id)

      # put this after fabricate before fill-in to make it work
      visit new_scout_path

      fill_in 'Full name', with: scout.full_name
      select '1', from: 'scout[troop_id]'
      click_button 'Add Scout'
  end
end