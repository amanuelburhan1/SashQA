@product @test_results
Feature: View Products Test Results
Background: 
  Given I am a logged in Member
  And I view a Sashimi Product
  When I click on the Test Results tab

Scenario Outline: Viewing the Product Test Results
  Then I am able to view an Overall Score for each <tested> section
Examples:
  |tested|
  |Standard picture quality|  
  |HD picture quality|
  |Sound quality|
  |Ease of use|
  |Energy use|

Scenario: Viewing How We Test content
  Then I am able to view How We Test content for each section