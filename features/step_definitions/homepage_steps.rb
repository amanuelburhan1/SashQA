Given /^I visit the Sashimi Landing Page$/ do  
  @home_page.goto
end

Then /^I should see the Sashimi Landing Page$/ do  
  assert_equal 'TV - Beta - Which? Technology', @home_page.title, 'Wrong url landed on'
end
