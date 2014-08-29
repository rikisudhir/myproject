Feature:Enter personal information


  Background:
    Given I am on Google search page
    When I search google for "Flipkart"
    And Click on Search button
    Then the page should content Flipkart
    When I click on the link Flipkart
    Then I should be taken to Flipkart Home page
    And I should see the following links in lefthand tab
    |Links|
    |Mobiles & Accessories   |
    |Computers               |
    |Cameras                 |
    |Home & Kitchen          |
    |TV, Video & Audio       |
    |Clothing                |
    |Footwear                |
    |Watches, Bags & Wallets |
    |Daily Personal Needs    |
    |Books                   |
    |eBooks (Beta)           |
    |Music, Movies & Posters |
    |MP3 Downloads           |
    |Gaming                  |
    |Baby Care & Toys        |
    |Sports & Fitness        |


  @regression
  Scenario: Login and enter personal information
    Given I am on Flipkart home page
    When I click on the link login
    When I fillin "login_email_id" with "rikisudhir@gmail.com"
    And I fillin "login_password" with "lovelyriki"
    And I click on "Login" button
    Then I should ne able to login.
    When I click on the link account
    Then I should see personal information block
    When  I  fillin .lastUnit form as
      |first_name     |last_name       |mobile          |landline       |
      |Sudhir         |Swain           |7798981479      |9960650445     |
    And I select "Male" as "gender"
    And click on the "Save Changes" button

  @inprogress
  Scenario: Enter address
    Given I am on Flipkart home page
    When I click on the link login
    When I fillin "login_email_id" with "rikisudhir@gmail.com"
    And I fillin "login_password" with "lovelyriki"
    And I click on "Login" button
    Then I should ne able to login.
    When I click on the link account
    Then I should see personal information block
    When  I click on link "Addresses"
     And Enter the adresses fields as
  |Street_Address      |Landmark |City |Pincode|
  |Sears               |Sears    |Pune |411014|
    And I select "Maharashtra" as "account_page_new_address_state"
  And I click on "Save Changes" button




