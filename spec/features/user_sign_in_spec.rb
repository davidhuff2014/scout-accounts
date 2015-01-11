require 'spec_helper'

feature 'user signs in' do

  scenario 'with valid email and password', { js: true } do
    # alice = Fabricate(:user)
    # sign_in(alice)
    user = Fabricate(:user)
    visit sign_in_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    save_and_open_page
    click_button 'Sign In'
    expect(page).to have_content user.full_name
    # expect(page).to have_content alice.full_name
  end
end