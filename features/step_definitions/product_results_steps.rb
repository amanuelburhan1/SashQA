When /^I click on the Test Results tab$/ do
  @product_page.testresults
  sleep 1
end

Then /^I am able to view the Which Score graphic$/ do
  assert @product_results_page.scoresvg?, 'Cannot find Score graphic'
  assert_equal @product_results_page.scoresvg, @product_page.headscore, 'Score in header and Test Results graphic do not match'
end

And /^I am able to view the Which Score breakdown$/ do
  assert @product_results_page.scorebreakdown?, "Cannot find Score Breakdown link"
  @product_results_page.scorebreakdown
  assert @product_results_page.breakdownlist.include?("Picture quality"), 'Cannot find Break down content'
  sleep 1
  @product_results_page.scorebreakdown
  sleep 1
end

And /^I am able to view an Overall Score for each (.*?) section$/ do |tested|
  case tested
    when 'Standard picture quality'
      assert @product_results_page.standardpic?, 'Cannot find Overall score stars'
    when 'HD picture quality'
      assert @product_results_page.hdpic?, 'Cannot find Overall score stars'
    when 'Sound quality'
      assert @product_results_page.sound?, 'Cannot find Overall score stars'
    when 'Ease of use'
      assert @product_results_page.easeofuse?, 'Cannot find Overall score stars'
    when 'Energy use'
      assert @product_results_page.energy?, 'Cannot find Overall score stars'
  end
end

Then /^I am able to view How We Test content for each section$/ do
  @section = @browser.find_elements(:class, 'read-more')

  @section.each do |section|
    section.find_element(:css, 'button.toggle-btn.link-right').click
    sleep 1
    assert section.find_element(:css, 'div.description.panel-details').displayed?, 'Cannot find content'
    section.find_element(:css, 'button.toggle-btn.link-right').click
    sleep 1
  end
end

