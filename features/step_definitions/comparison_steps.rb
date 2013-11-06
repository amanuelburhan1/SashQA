Given /^I visit the Sashimi Comparison Page$/ do  
  @comparison_page.goto
end


Then /^I should see the Sashimi Comparison Page$/ do  
  assert_equal 'Comparison - Beta - Which? Technology', @home_page.title, 'Wrong url landed on'
end
