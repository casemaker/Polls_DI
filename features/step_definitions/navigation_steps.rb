require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

Given(/^I am on (.+)$/) do |page_name|

visit page_name
#puts page.body  
end

Given (/^I am logged in as a user/) do 
 @current_user = User.create!(:username => 'user', :password => 'password')
login_as(@current_user, :scope =>:user)
end

Given (/^I log out/) do
 logout
end

Given(/^I fill in "(.*?)" with "(.*?)"$/) do |field, value|
  fill_in(field, :with => value)
end

When(/^I press "(.*?)"$/) do |button|

  click_link_or_button(button)

end

Then(/^show me the page$/) do
#puts page.body

# save_and_open_page 

end

Then(/^the page should have the message "(.*?)"$/) do |arg1|

end