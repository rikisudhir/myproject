Feature: use of functions

Background:
Given I am on Google search page
When I search google for "Flipkart"
And Click on Search button
Then the page should content Flipkart
When I click on the link Flipkart
Then I should be taken to Flipkart Home page
@regression
Scenario:clicking on Footware link on Flipkart
When i click on Footware tab
Then I should be on   "MENS FOOTWARE PAGE"
When I click on Casulal shoes
Then I should be on "CASUAL SHOES PAGE"
Then I should see the text Casual shoes
Then I should see "Casual shoes" within "#pageTitle"



