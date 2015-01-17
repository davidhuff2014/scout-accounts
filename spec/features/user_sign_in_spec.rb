require 'rails_helper'

feature 'user signs in' do
# feature 'user signs in', { js: true }  do


    scenario 'with valid email and password' do
    user = Fabricate(:user)
    sign_in(user)
    expect(page).to have_content user.full_name
  end
end
