Feature: Go for a run
  As a user
  In order to practice arithmetic
  I want to answer a series of math questions
  And I want to see my results

  Scenario: Start run
    Given I am at the home page
    When I click the button Take a run
    Then I should see a question
