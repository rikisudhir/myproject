Then /^(?:|I )should be on (.+)$/ do |page_name|
  current_path = URI.parse(current_url).path


  current_path = 'http://www.flipkart.com'+current_path
  if current_path.respond_to? :should
    current_path.should == path_to(page_name)
  else
    assert_equal path_to(page_name), current_path
  end
end