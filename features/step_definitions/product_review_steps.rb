When /^I click on the Full Review tab$/ do
  @product_page.fullreview
  sleep 1
end

Then /^I am able to view the Launch Date$/ do  
  assert @product_review_page.launchdate.include?("Launched on"), 'Launch date not found'
end

Then /^I am able to view the Curated Review$/ do  
  assert @product_review_page.curated?, 'Cannot Find Curated View'
end

Then /^I am able to view the Full CMS Review$/ do  
  assert @product_review_page.cmsreview?, 'Cannot find full CMS Review'
end

Then /^I am able to see reviews left by Reevoo users$/ do  
  if @product_review_page.averagereevoo?
    assert @product_review_page.reevooreviewer?, 'Cannot find a Reevoo review on page'
  else
    puts 'Cannot find Reevoo entries'
  end
end

Then /^I am able to see the Pluck widget$/ do
  assert @product_review_page.memberreviews?, 'Cannot find Members Reviews section'
  if @product_review_page.memberreviews?
    assert @product_review_page.pluckwidget?, 'Cannot find Pluck Widget'
  else
    puts 'Cannot find Member Reviews section, Pluck checks ignored'
  end
end