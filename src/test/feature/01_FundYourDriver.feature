#Author: sumit.bera@live.in

@BookingFeature
Feature: This feature will be used to book and appointment

  Background: Launch trevo web app
    Given I open trevo web app in browser

  @Trevo
  Scenario Outline: Book an appointment
    Given I click on learn more button on landing screen
    Then I should be navigated to book appointment section
    When I'm on booking appointment page
    Then I verify all the sections of booking perform
    When I enter my full name as "<fullname>"
    And I enter my phone number as "<phone number>"
    And I enter my email id as "<email id>"
    And I enter my cars interested as "<cars interested>"
    And I select my booking date as "<booking date>"
    And I clicked on Let's drive button
    Then I should be successfully book and appointment

    Examples:
      | fullname   | phone number | email id           | cars interested | booking date |
      | Sumit Bera | 0142608796   | sumit.bera@live.in | Axia            | 20 May 2020  |