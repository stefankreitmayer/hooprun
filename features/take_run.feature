Feature: Go for a run
  As a user
  In order to practice arithmetic
  I want to answer a series of math questions
  And I want to see my results

  Scenario: Setup a run
    Given I am at the home page
    When I click the link Let's go for a run
    Then I should be on the run setup page

  Scenario: Start a run
    Given I am on the run setup page
    When I click the button Let's go
    Then I should see the latest obstacle

  Scenario: Answer correctly
    Given I am at the first obstacle
    When I answer correctly
    Then I should see a different obstacle

  Scenario: Answer incorrectly
    Given I am at the first obstacle
    When I answer incorrectly
    Then I should see the same obstacle
    And the correct solution should be highlighted
