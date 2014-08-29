Feature: Demo
  Make sure Cucumber and Capybara are wired up properly
  
  Scenario: Search Google
    When I search Google for "cucumber"
    Then page should content cucumber
    And page should content link cukes.info/
    And i should see cucumber title cucumber - Google Search
    And  i should see the cucumber wikipedia link


    Scenario: Click on link
    When I click on cucumber wikipedia link
    Then I should see the page title



