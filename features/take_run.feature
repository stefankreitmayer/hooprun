Feature: Go for a run
  As a user
  In order to practice arithmetic
  I want to answer a series of math questions
  And I want to see my results

  Scenario: Go for a run
    Given I am at the home page
    When I click the link Go for a run
    Then I should see the run preparation form
