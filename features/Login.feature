@login
Feature: Sashimi Login
Background: 
  Given I am not Logged In

Scenario Outline: A visit to any Sashimi Page requires User to Log In
  Given I visit the Sashimi <entry> Page
  When I am prompted to Log In
  And I enter my Login details
  Then I should see the Sashimi <entry> Page
Examples:
  |entry|
  |landing|
  |product|
  |comparison|
  |favourites|
  |search|