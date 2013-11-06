@whynottry
Feature: Sashimi Why Not Try
Background: 
  Given I am a logged in Member
  And I view a Sashimi Product

Scenario: Viewing the 3 types of recommended TVs
  Then I see a recommended TV under Something Different
  Then I see a recommended TV under For a little more
  Then I see a recommended TV under For a little less

Scenario: Linking to the Full Review of recommended TVs
  Given I see any recommended TV
  Then I can click the Full Review link for that recommended TV

 