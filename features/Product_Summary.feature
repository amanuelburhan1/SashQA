@product @summary
Feature: View Product Summary page
Background: 
  Given I am a logged in Member
  And I view a Sashimi Product

Scenario: Viewing any Which? Product Page
  Then I am able to view the Product Brand and Model
  And I am able to view the Product Score
  And I am able to view the Product Flags if available
  And I am able to view the Product Price
  And I am able to view the Price Predictor link
  And I am able to view the Where to Buy link

Scenario: Viewing Product Summary images and hotspots
  Then I am able to view the Front image and hotspots
  And I am able to view the Side image and hotspots
  And I am able to view the Back image and hotspots
  And I am able to view the 360 degree image if available

Scenario: Viewing Product Summary Which? Verdict
  Then I am able to view the Which Verdict section
  And I am able to view the Product Score under the Verdict section
  And I am able to view Pros and Cons
  And I am able to view a link to the Full Review

Scenario: Viewing Product Summary Owners Views
  Then I am able to view the Owners Views section
  And I am able to view the Reevoo widget if available
  And I am able to view the Brand Satisfaction rating if available
  And I am able to view the Brand Reliability rating if available