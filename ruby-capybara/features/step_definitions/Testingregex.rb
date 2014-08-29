Given(/^I am on puppy home page$/) do
  visit 'http://puppies.herokuapp.com/'
end




When(/^I press button "(.*?)"$/) do |arg1|
click_button(arg1)
end