Feature: 1. Filter feature

Scenario: Signup
    Given I am on create filter page
    When I open filter params
    Then I submit filter

Scenario: Filter without params
    Given I am on create filter page
    When I open filter params
    Then I submit filter with no params
    Then I Check if I am on params screen
    
Scenario: Settings
    Given I am on create filter page
    Then I open settings screen