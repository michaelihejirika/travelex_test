Feature: Sliding through the Travelex home page
  As a user
  I want to resize the travelex home page
  So that I can slide through the screens

  Scenario: Sliding through the Travelex screens
    Given I am on travelex home page
    When I resize the page to less than "551px"
    And slide though the screens
    Then I should on screen number "3"