Feature: Add branch to a venue
  In order to have branches for a venue
  As a Business Owner
  I want to be able to add branch information to a venue

  Scenario: 1 venue exist
    Given a venue name "Burguer Joint"
    When I add a new branch for the venue "Burguer Joint" with the following information:
      | address                          | telephone    | delivery_zone |
      | Near my house #02, Hood, Country | 555-555-5555 |               |
    Then I view the following branch information:
      | address                          | telephone    | delivery_zone |
      | Near my house #02, Hood, Country | 555-555-5555 |               |


