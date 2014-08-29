Given /^I am on Google search page$/ do

  google_search()
end

When /^I search google for "(.*?)"$/ do |query|
  fill_in 'gbqfq', :with => query
end

When /^Click on Search button$/ do
  click_button 'gbqfb'
end

Then /^the page should content Flipkart$/ do
  page.has_link?("www.flipkart.com/")

 end

 sleep(2)
When /^I click on the link Flipkart$/ do
  find(:xpath,"//h3[@class='r']//a[@href='http://www.flipkart.com/']").click
  sleep(10)

end

Then /^I should be taken to Flipkart Home page$/ do
  page.has_content?("24x7 Customer Support  -  Contact Us")
  page.has_link?("sdsd")
sleep(3)
end


Then /^I should see the following links in lefthand tab$/ do |links|
  links.hashes.each do|link|


    Then "I should see \"#{link[:links]}\" within \".fk-mh-navmenu\""
  end


end


When /^I search for mobile in Search tab$/ do
  fill_in'fk-top-search-box', :with =>'mobile'
  sleep(5)
  #find_element(:xpath,'//div[@class='fk-main-search-btnsec']').click
  find("input[class='fk-main-search-btn']").click
  sleep(5)
end

Then /^I should see different links$/ do
  page.has_content?("Mobile Accessories")
  page.has_content?("Mobiles")
  page.has_content?("Tablets")
  page.has_content?("Landlines")
end

When /^I click on mobiles link$/ do
  within("div[id='asr-preview-box-new-mobiles-id']") do
    click_link("Mobiles (726)")
    end
  sleep(3)
  page.has_content?("Mobiles")
end

When /^Select the tab low to high$/ do
  select('Price -- Low to High', :from => 'p[]')
  sleep(3)
end


Then /^I should see (\d+) products$/ do |number|
 page.has_content?(number)
end



Then /^I should see some mobile with price (\d+)$/ do |number|
  page.has_content?(number)

end

When /^I click on the link login$/ do
  within("div[class='fk-info-links']") do
  click_link("Login")
    sleep(5)
    end
end

Then /^I should see the login popup$/ do
  page.has_content?("Email")
  page.has_content?("Password")
  page.has_content?("Don't have an account?")
  page.has_link?("Forgot                                 your password?")

  page.has_css?("input[class='fk-button-blue']")



end

When /^I click on create one link$/ do
  click_link("Create One!")
end

Then /^I should see Email,password and repeat field\.$/ do
  page.has_content?("Email Address")
  page.has_content?("Password")
  page.has_content?("Repeat")
  page.has_link?("Login")

end

When /^I enter Email as "(.*?)"$/ do |email|
  email= 'sann'+rand(100).to_s+'@mailinator.com'
  fill_in 'Email Address',:with =>email
end

When /^password as"(.*?)"$/ do |password|
  within("div[id='login-signup-dialog']") do
  fill_in 'signup-password', :with => password
    end
end

When /^Repeat password as "(.*?)"$/ do |repeat|
  fill_in 'signup-repeat-password', :with => repeat
end

When /^click on signup button$/ do
  find_button('Sign Up Now!').click
end

Then /^I should ne able to login\.$/ do
  page.has_content?("Featured Offers")
  page.has_content?("Mobiles")
  sleep(5)
end



When /^I click on the clothing tab$/ do
  ##within("a[href='/mens-clothing?_pop=mheader&otracker=hp_menu_header_mens-clothing']") do
  ##click_link("Clothing")

  find("a[href='/mens-clothing?_pop=mheader&otracker=hp_menu_header_mens-clothing']").click
  sleep(2)
  ##end
end

Then /^I should be redirected to men's clothing page$/ do
  page.has_content?("Men's Clothing")
  page.has_content?("Browse")
  page.has_content?("Evening & Party Wear Store")
end

When /^I click on Polos and T\-shirt link$/ do
  click_link("Polos & T-Shirts")
  sleep(2)
end

Then /^I should see size,type,sleeve field in the left side\.$/ do
  page.has_xpath?("//div[@class='oneFacet bmargin5']//div[@class='head']//h2[@class='line']")
end

When /^I clickon the check box XL\-(\d+) under size field$/ do |arg1|
  ##check('XS - 38')
  find(:xpath, "//li[@class='facet']//input[@value='facets.size%5B%5D=XS+-+38']").set(true)
end

When /^I click on polo as type\.$/ do
  ##check('Polo')

end

Then /^I should see the same searchable field under Polos and T\-shirt$/ do
  page.has_xpath?("//span[@class='title']")
end

When /^i sort by discount\.$/ do
  select('Discount', :from => 'p[]')
end

Then /^I should see different discounted products\.$/ do
  page.has_content?("Showing 32 products ")
end



When /^i click on Footware tab$/ do
  find("a[href='/mens-footwear?_pop=mheader&otracker=hp_menu_header_mens-footwear']").click
  sleep(2)
end


When /^I click on Casulal shoes$/ do
  find("a[href='/shoes/casual-shoes/pr?sid=cil,nit,e1f']").click
end


Then /^I should see the text Casual shoes$/ do
  Then "I should see \"Casual shoes\" within \"#pageTitle\""
end

#Then /^I should see the  details$/ do
  #page.has_content?("Casual Shoes")
 # Then %[I should see "Casual Shoes" within "#pageTitle"]

#end








