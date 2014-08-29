def path_to(page_name)
  ##rel = ActionController::Base.relative_url_root || ""
  rel = 'http://www.flipkart.com'

  case page_name

    when /the home\s?page/
      "#{rel}/"
    when /the login page/
      user_login_path
    when /MENS FOOTWARE PAGE/
      "#{rel}/mens-footwear"
    when /CASUAL SHOES PAGE/
      "#{rel}/shoes/casual-shoes/pr"

end
  end