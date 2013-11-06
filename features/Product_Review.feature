@product @review
Feature: View Product Full Review
Background: 
  Given I am a logged in Member
  And I view a Sashimi Product

Scenario: Viewing the Full Which? Review
  When I click on the Full Review tab
  Then I am able to view the Launch Date
  And I am able to view the Curated Review
  And I am able to view the Full CMS Review
  And I am able to see reviews left by Reevoo users