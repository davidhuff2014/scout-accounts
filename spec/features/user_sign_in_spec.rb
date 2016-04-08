require 'rails_helper'

feature 'user signs in', { js: true }  do

    scenario 'with valid email and password' do
      user = Fabricate(:user)
      sign_in(user)
      expect(page).to have_content user.full_name
    end

    scenario 'with valid different case email address' do
      alice = Fabricate(:user)
      # puts alice.email
      alice.email.upcase!
      # puts alice.email
      sign_in(alice)
      expect(page).to have_content alice.full_name
      sign_out
      alice.email.downcase!
      # puts alice.email
      sign_in(alice)
      expect(page).to have_content alice.full_name
    end
end
