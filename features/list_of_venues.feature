Feature: List of Venues
  In order to see a list of venues I could order from
  As a User
  I want to be able to enter an address and see a list of venues who's delivery area covers the given address

  Scenario: There are no venues covering the provided address
    Given I ask for venues in the address "Near my place, #04, The Hood"
    When I view the list of venues
    Then I should see the following message "There are no venues covering that address"
