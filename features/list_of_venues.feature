Feature: List of Venues
  In order to see a list of venues I could order from
  As a User
  I want to be able to enter an address and see a list of venues who's delivery area covers the given address

  Scenario: There are no venues covering the provided address
    Given I live at "Near place, #03, The Hood" address
    And there are no venues near "Near place, #03, The Hood"
    When I view the list of venues
    Then I should see the following message "There are no venues covering that address"

  Scenario: 1 Venue, near an address
    Given I live at "Near place, #03, The Hood" address
    And a venue with the name "The Burguer Shop" exists
    And the venue with the name "The Burguer Shop" has the following branches:
      | address                   | telephone    |
      | Near place, #08, The Hood | 555-555-5555 |
    When I view the list of venues
    Then I should see the following information for venues:
      | name             | address                   | telephone    |
      | The Burguer Shop | Near place, #08, The Hood | 555-555-5555 |
