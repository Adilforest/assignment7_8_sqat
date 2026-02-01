@regression
Feature: Date selection

  Scenario: Select check-in and check-out dates
    Given user opens Booking.com
    When user selects check-in and check-out dates
    Then dates should be applied successfully

  Scenario: Search with dates and destination
    Given user opens Booking.com
    When user enters destination "Astana"
    And user selects check-in and check-out dates
    And user clicks search
    Then search results should be displayed
