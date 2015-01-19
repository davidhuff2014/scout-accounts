require 'rails_helper'

feature 'user adds scout' do

  scenario 'valid user adds scout', { js: true } do

    sign_in

    visit new_scout_path
    troop = Fabricate(:troop, id: 1, troop_number: 261)
    scout =  Fabricate(:scout, troop_id: troop.id)
    fill_in 'Full name', with: scout.full_name
    binding.pry
    select "261", :from => "scout[troop_id]"

    click_button 'Add Scout'
  end
end