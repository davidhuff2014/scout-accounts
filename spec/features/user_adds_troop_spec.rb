require 'rails_helper'

feature 'user adds troop', { js: true } do

  scenario 'valid user adds troop' do

    sign_in

    visit new_troop_path

    fill_in 'Number', with: 261
    fill_in 'Location', with: 'Northfield, Ohio'
    fill_in 'Charter sponsor', with: 'Northfield Presbyterian Church'
    select '1938', from: "troop[inception_year]"
    # after a year and a half of testing suddenly it cannot find the button!
    find_button 'Add Troop'
    click_button 'Add Troop'
    expect(page).to have_content('261')
    expect(page).to have_content('1938')
    expect(page).to have_content('Northfield, Ohio')
    expect(page).to have_content('Northfield Presbyterian Church')
  end
end