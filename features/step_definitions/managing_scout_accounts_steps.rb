Given(/^I am on the Scout Account site$/) do
  @browser.goto 'http://localhost:3000'
end

Then(/^I should see "(.*?)"$/) do |message|
  expect(@browser.text).to include message
end

When(/^I click on the Sign Up Now! link$/) do
  expect(@browser.text).to include('Sign Up Now!')
  @browser.link(:text, 'Sign Up Now!').click
end

Then(/^I enter "(.*?)" in the Email field$/) do |email|
  @browser.text_field(id: 'user_email').set(email)
end

Then(/^I enter "(.*?)" in the Password field$/) do |password|
  @browser.text_field(id: 'user_password').set(password)

end

Then(/^I enter "(.*?)" in the Full Name field$/) do |name|
  @browser.text_field(id: 'user_full_name').set(name)
end

Then(/^I click the Sign Up button$/) do
  @browser.button(:text, 'Sign Up').click
end

