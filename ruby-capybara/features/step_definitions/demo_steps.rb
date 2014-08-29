When /^I search Google for "(.*)"$/ do |query|
  visit 'http://www.google.com/advanced_search?hl=en'
  fill_in 'as_q', :with => query
  click_button 'Search'
end
Then /^page should content cucumber$/ do
page.has_content?("The cucumber is a widely cultivated plant in the gourd family")

end
Then /^page should content link cukes\.info\/$/ do
  page.has_link?("cukes.info/")
end
Then /^i should see cucumber title cucumber \- Google Search$/ do
  page.has_xpath?("//title['cucumber - Google Search']")
end
Then /^i should see the cucumber wikipedia link$/ do
  page.has_css?("a[href='http://en.wikipedia.org/wiki/Cucumber']")
end

When /^I click on cucumber wikipedia link$/ do
        click_link("Cucumber - Wikipedia, the free encyclopedia")
end
       sleep(5)
Then /^I should see the page title$/ do
  page.has_xpath?("//title['Cucumber - Wikipedia, the free encyclopedia']")
end






