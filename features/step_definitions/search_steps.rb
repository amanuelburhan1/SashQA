Given /^I visit the Sashimi Search Page$/ do  
  @search_page.goto
end

Given /^I am on the Landing Page$/ do  
  @browser.get('http://www.which.co.uk/beta/reviews/tv')
end

When /^I click on the Search icon$/ do 
  assert @search_page.search?, 'Cannot find Search Icon'
  @search_page.search
  sleep 1 
end

And /^I click submit$/ do
  @search_page.submit
  sleep 3
end

And /^the help text is showing$/ do
  assert @search_page.helptext?, 'Cannot find Help text'
end

And /^10 seconds have elapsed$/ do 
  sleep 11
end



#Search terms
When /^I enter a brand as a search term$/ do
  @search_page.searchfield = 'Sony'
end

When /^I enter nothing as a search term$/ do
  @search_page.searchfield = ''
end

When /^I enter LX99 as a search term$/ do
  @search_page.searchfield = 'LX99'
end

When /^I enter KDL-32HX753 as a search term$/ do
  @search_page.searchfield = 'KDL-32HX753'
end

When /^I enter UE55F8000STXXU as a search term$/ do
  @search_page.searchfield = 'UE55F8000STXXU'
end

When /^I have applied a facets filter$/ do
  @browser.get('http://www.which.co.uk/beta/reviews/tv/search?sortby=sort.which_score|desc&filter.screen_size[]=39-46&filter.brand[]=Panasonic')
  sleep 2
end

#Results
Then /^I should see the Sashimi Search Page$/ do  
  assert_equal 'Search - Beta - Which? Technology', @home_page.title, 'Wrong url landed on'
end


Then /^I see the free text Search field$/ do  
  assert @search_page.searchfield?, 'Cannot find Search Field'
end


Then /^I see all that brands TVs returned$/ do  
  tv = @browser.find_elements(:class, 'manufacturer')
 
  tv.each do |tv|
  assert_equal 'Sony', tv.text
  end
end


Then /^I see a help message indicating to enter some text$/ do 
  assert @search_page.helptext?, 'Cannot find Help text'
  assert @search_page.helptext.include?('Please type something into the box and try again'), 'Help text is incorrect'
end


Then /^the help text fades out$/ do  
  assert_equal false, @search_page.helptext?, 'Help text is still showing'
end


Then /^the search box slides back up$/ do  
  sleep 2
  assert_equal false, @search_page.searchfield?, 'Search field is still showing'
end


Then /^a count of the number of TVs is returned$/ do  
  assert @search_page.count?, 'Cannot find TV results count'
end

Then /^I see all TVs that partially match that model number$/ do  
  tv = @browser.find_elements(:class, 'model')
 
  tv.each do |tv|
  assert tv.text.include?('LX99'), 'model number must include LX99!'
  end
end

Then /^I see only the KDL-32HX753 product returned$/ do  
  tv = @browser.find_elements(:class, 'model')
 
  tv.each do |tv|
  assert_equal tv.text, 'KDL-32HX753', 'model number must match KDL-32HX753!'
  end
end

Then /^I see only the UE55F8000STXXU product returned$/ do  
  tv = @browser.find_elements(:class, 'model')
 
  tv.each do |tv|
  assert_equal tv.text, 'UE55F8000STXXU', 'model number must match UE55F8000STXXU!'
  end
end

And /^the facets do not update$/ do
 assert @browser.current_url.include?('&q'), 'Facet counts have updated'
end

And /^the facets reset$/ do
 assert @browser.current_url.include?('&q'), 'Facet counts have updated'
end

