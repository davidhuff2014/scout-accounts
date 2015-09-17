Given(/^I am on the Scout Accounts Web Site$/) do
  @browser.goto 'http://localhost:3000'
end

Then(/^I should see "(.*?)"$/) do |message|
  expect(@browser.text).to include message
end
