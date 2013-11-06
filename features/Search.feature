@search
Feature: Free Text Search
Background: 
  Given I am a logged in Member

Scenario: Accessing Free Text Search from the Landing Page
  Given I am on the Landing Page
  Then I see the free text Search field

Scenario: Accessing Free Text Search from any page except the Landing Page
  And I visit the Sashimi Search Page
  When I click on the Search icon
  Then I see the free text Search field

Scenario: Empty Search Term
  Given I enter nothing as a search term
  When I click submit
  Then I see a help message indicating to enter some text

Scenario: 10 Second fade
  Given I enter nothing as a search term
  When I click submit
  And the help text is showing
  And 10 seconds have elapsed
  Then the help text fades out

Scenario: Searching for a TV by Brand
  When I enter a brand as a search term
  And I click submit
  Then I see all that brands TVs returned
  And a count of the number of TVs is returned
  And the facets do not update
  
Scenario: Partial Model Number match
  When I enter LX99 as a search term
  And I click submit
  Then I see all TVs that partially match that model number
  
Scenario: Model Number match containing hyphen
  When I enter KDL-32HX753 as a search term
  And I click submit
  Then I see only the KDL-32HX753 product returned
    
Scenario: Exact Model Number match
  When I enter UE55F8000STXXU as a search term
  And I click submit
  Then I see only the UE55F8000STXXU product returned
 
Scenario: Facets Reset 
  Given I have applied a facets filter
  When I click on the Search icon
  And I enter a brand as a search term
  And I click submit
  Then I see all that brands TVs returned
  And the facets reset