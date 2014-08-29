Feature:Flipkart search on google

Background:
  Given I am on Google search page
  When I search google for "Flipkart"
  And Click on Search button
  Then the page should content Flipkart
  When I click on the link Flipkart
  Then I should be taken to Flipkart Home page
@regression
Scenario: Flipkart home page
Given I am on Google search page
When I search google for "Flipkart"
And Click on Search button
Then the page should content Flipkart

 @regression
Scenario:Clicking on the link in google page
  Given I am on Google search page
  When I search google for "Flipkart"
  And Click on Search button
  Then the page should content Flipkart
  When I click on the link Flipkart
  Then I should be taken to Flipkart Home page

 @regression
Scenario: Searching lowest mobile
  When I search for mobile in Search tab
  Then I should see different links
  When I click on mobiles link
  And Select the tab low to high
  Then I should see 726 products
  And I should see some mobile with price 929
   @regression
  Scenario:Create an account and login
    When I click on the link login
    Then I should see the login popup
    When I click on create one link
    Then I should see Email,password and repeat field.
    When I enter Email as "sudhiyy@mailinator.com"
    And password as"password"
    And Repeat password as "password"
    And click on signup button
    Then I should ne able to login.

   @Regression
   Scenario: selecting lowest polo cloth
     When I click on the clothing tab
     Then I should be redirected to men's clothing page
     When I click on Polos and T-shirt link
     Then I should see size,type,sleeve field in the left side.
     When I clickon the check box XL-38 under size field
     And  I click on polo as type.
     Then I should see the same searchable field under Polos and T-shirt
     When i sort by discount.
     Then I should see different discounted products.







