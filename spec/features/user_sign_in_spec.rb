require 'rails_helper'

feature 'user signs in', { js: true }  do

  scenario 'with valid email and password' do
    # alice = Fabricate(:user)
    # sign_in(alice)
    user = Fabricate(:user)
    visit sign_in_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    # save_and_open_page
    # binding.pry
    click_button 'Sign In'
    # binding.pry
    expect(page).to have_content user.full_name
    # expect(page).to have_content alice.full_name
  end
end
