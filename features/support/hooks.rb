require 'watir-webdriver'

Before do
  @browser = Watir::Browser.new :firefox
end

After do |scenario|
  @browser.close
end