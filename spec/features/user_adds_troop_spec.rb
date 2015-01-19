require 'rails_helper'

feature 'user adds troop' do

  scenario 'valid user adds scout', { js: true } do
  # scenario 'valid user adds scout' do

      sign_in

    visit new_troop_path
    troop = Fabricate(:troop)
    fill_in 'Troop number', with: troop.troop_number
    fill_in 'Location', with: troop.location
    fill_in 'Charter sponsor', with: troop.charter_sponsor
    select '1938', from: "troop[inception_year]"
    click_button 'Add Troop'
    expect(page).to have_content(troop.troop_number)
    expect(page).to have_content(troop.location)
    expect(page).to have_content(troop.charter_sponsor)
  end
end