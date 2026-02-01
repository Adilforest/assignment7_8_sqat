@smoke
Feature: Hotel search on Booking.com

  Scenario: Search hotels by destination
    Given user opens Booking.com
    When user enters destination "Astana"
    And user clicks search
    Then search results should be displayed

  @regression
  Scenario: Search hotels by another city
    Given user opens Booking.com
    When user enters destination "Almaty"
    And user clicks search
    Then search results should be displayed
