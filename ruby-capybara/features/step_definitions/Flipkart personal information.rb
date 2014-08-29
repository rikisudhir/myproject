Given /^I am on Flipkart home page$/ do
  page.has_content?("24x7 Customer Support  -  Contact Us")
  page.has_link?("sdsd")
end

When /^I fillin "(.*?)" with "(.*?)"$/ do |field, value|
  #within("div[id='login-dialog']") do
  fill_in(field, :with => value)
    #end
end


When /^I click on "(.*?)" button$/ do |arg1|
  find_button(arg1).click
end


When /^I click on the link account$/ do
find(:xpath,"//a[@href='/account/'][1][text()='Account']").click

end




Then /^I should see personal information block$/ do
 #Then "I should see \"Personal Information\""
  #Then "I should see \"First Name\""
#Then "I should see \"Last Name\""
  page.has_content?("Personal Information")
  page.has_content?("First Name")
  page.has_content?("Last Name")
  sleep(2)

end

When /^I  fillin \.lastUnit form as$/ do |table|
  # table is a Cucumber::Ast::Table
  table.hashes.each do |hash|
    hash.each do |field, value|
      And "I fillin \"#{field}\" with \"#{value}\""
    end
  end
end
When /^I select "(.*?)" as "(.*?)"$/ do |arg1, arg2|
  select(arg1, :from => arg2)
end
When /^click on the "(.*?)" button$/ do |button|
  find_button(button).click
end


When /^I click on link "(.*?)"$/ do |arg1|
  click_link(arg1)
  sleep(1)
end

Then /^Enter the adresses fields as$/ do |address|
  # table is a Cucumber::Ast::Table
   address.hashes.each do |add|
     And "I fillin \"account_page_new_address_line1\" with \"#{add[:Street_Address]}\""
     And "I fillin \"account_page_new_address_landmark\" with \"#{add[:Landmark]}\""
     And "I fillin \"account_page_new_address_city\" with \"#{add[:City]}\""
     And "I fillin \"account_page_new_address_pincode\" with \"#{add[:Pincode]}\""
   end

end
