require 'rails_helper'

feature 'User registers', { js: true} do

    background do
    visit register_path
  end

  scenario 'with valid info' do
    fill_in_valid_user_info
    click_button 'Sign Up'
    expect(page).to have_content("Thank you for registering with Scout Accounts, please sign in now.")
  end

  def fill_in_valid_user_info
    fill_in 'Email', with: 'john@example.com'
    fill_in 'Password', with: '123456'
    fill_in 'Name', with: 'John Doe'
  end
end