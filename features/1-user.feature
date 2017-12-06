Feature: 1. Filter feature

Scenario: Create Transports filter
    Given I am on create filter page
    When I open transports filter params
    Then I submit transports filter

Scenario: Delete Transports filter
    Given I am on create filter page
    Then I go to Meklesanas filtri page
    Then I delete saved transports filter

Scenario: Create Vakances filter
    Given I am on create filter page
    When I open vakances filter params
    Then I submit vakances filter

Scenario: Delete Vakances filter
    Given I am on create filter page
    Then I go to Meklesanas filtri page
    Then I delete saved vakances filter

Scenario: Create Ipasumi filter
    Given I am on create filter page
    When I open ipasumi filter params
    Then I submit ipasumi filter

Scenario: Delete Ipasumi filter
    Given I am on create filter page
    Then I go to Meklesanas filtri page
    Then I delete saved ipasumi filter