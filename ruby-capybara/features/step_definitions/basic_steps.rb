#And /I should see the text/ do|text|
  #p "#{text}"
  #@browser.text.should =~ /#{text}/

#end

#Then /^I should see '(.*)'$/ do |text|
  #body.should match(/#{text}/m)
#end

#Then /^I should see "(.*?)"$/ do |arg1|
  #body.should match(/#{arg1}/m)
#end


And /^I should see the text "(.*?)"$/ do |arg1|
  #@browser.text.should =~ /#{arg1}/
  body.should match(/#{arg1}/m)
end


Then /^I should see "(.*?)" $/ do |arg1|
  body.should match(/#{arg1}/m)
end

Then /^I should see "(.*?)" within "(.*?)"$/ do |text, selector|
  with_scope(selector) do
    if page.respond_to? :should
      page.should have_content(text)
    else
      assert page.has_content?(text)
    end
  end
end









