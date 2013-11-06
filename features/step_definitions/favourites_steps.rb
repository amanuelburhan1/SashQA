Given /^I visit the Sashimi Favourites Page$/ do  
  @favourites_page.goto
end

Then /^I should see the Sashimi Favourites Page$/ do  
  assert_equal 'Favourites - Beta - Which? Technology', @home_page.title, 'Wrong url landed on'
end

