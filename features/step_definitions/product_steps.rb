Given /^I view a Sashimi Product$/ do  
  @product_page.goto
  @browser.all(:css, 'button.revert-close.icon-close').each do |item| 
    item.click
    sleep 1
  end
end


Then /^I should see the intended Sashimi Product$/ do  
  assert_equal 'Samsung UE40ES8000 - Beta - Which? Technology', @home_page.title, 'Wrong url landed on'
end


Then /^I am able to view the Product Brand and Model$/ do
  @brand = @browser.execute_script("return document.getElementsByClassName('brand')[0].textContent")
  @model = @browser.execute_script("return document.getElementsByClassName('model')[0].textContent")

  assert_equal @brand, 'Samsung', 'Product Brand is not expected value'
  assert_equal @model, 'UE40ES8000', 'Product Model is not expected value'
end

Then /^I am able to view the Product Score$/ do
  assert @product_page.headscore?, 'Score not found in header'
end

Then /^I am able to view the Product Flags if available$/ do
  assert @product_page.bestbuy?, 'Best Buy image not found'
end

Then /^I am able to view the Product Price$/ do
  assert @product_page.price?, 'Cannot find Product price'
  assert @product_page.price.include?('.'), 'Price format may be wrong'
  #assert @product_page.price.include?('£'), 'Cannot find £ sign'
end

Then /^I am able to view the Price Predictor link$/ do
  if @product_page.price?
    assert @product_page.pricepredictor?, 'Price Predictor not found for this TV'
  else
    puts 'No Price Runner data for this TV, therefore no Price Predictor'
  end  
end

Then /^I am able to view the Where to Buy link$/ do
  if @product_page.price?
    assert @product_page.wheretobuy?, 'Cannot find Where To Buy link'
  else
    puts 'No Price Runner data for this TV, therefore no Where to Buy'
  end
end

Then /^I am able to view the Front image and hotspots$/ do
  assert @product_page.front?, 'Cant find Front link'
  #assert @product_page.fronttv?, 'Cant see Front TV image'
  assert @product_page.picturehs?, 'Hotspot missing'
  assert @product_page.soundhs?, 'Hotspot missing'
  assert @product_page.easehs?, 'Hotspot missing'
  @product_page.picturehs
    sleep 1
    assert @product_page.picturetext?, "Picture Hotspot content not found"
    sleep 1
    @product_page.picturehs
    
  @product_page.soundhs
    sleep 1
    assert @product_page.soundtext?, "Sound Hotspot content not found"
    @product_page.soundhs
    
  @product_page.easehs
    sleep 1
    assert @product_page.easetext?, "Ease of Use Hotspot content not found"
    @product_page.easehs
    sleep 1
end

Then /^I am able to view the Side image and hotspots$/ do
  @product_page.right
    sleep 1.0
    @product_page.displayhs
    sleep 1.0
    assert @product_page.displaytext?, "Display Type Hotspot content not found"
    @product_page.displayhs
end

Then /^I am able to view the Back image and hotspots$/ do
  @product_page.back
    sleep 1.0
    @product_page.energyhs
    sleep 1.0
    assert @product_page.energytext?, "Energy Use Hotspot content not found"
    @product_page.energyhs
    @product_page.connecths
    sleep 1
    @product_page.connecths
end

Then /^I am able to view the 360 degree image if available$/ do
  @product_page.threesixty
    sleep 1
  assert @product_page.threesixtyactive?, '360 image link not active'
end


Then /^I am able to view the Which Verdict section$/ do
  assert @product_page.whichverdictheader?, 'Cannot find Which Verdict header'
  assert @product_page.whichverdicttext?, 'Cannot find Which Verdict text'
end

Then /^I am able to view the Product Score under the Verdict section$/ do
  assert_equal @product_page.headscore, @product_page.score, 'Score fields do not match'
end

Then /^I am able to view Pros and Cons$/ do

end

Then /^I am able to view a link to the Full Review$/ do
  assert @product_page.readreview?, 'Cannot find Read Full Review link'
end
    
Then /^I am able to view the Owners Views section$/ do
  assert @product_page.ownersviews?, 'Cannot find Owners Views section'
end

Then /^I am able to view the Reevoo widget if available$/ do
  if @product_page.ownersviews?
    assert @product_page.reevoo?, 'Reevoo Link missing'
  else
    puts 'Cannot find Owners Views section, Reevoo check ignored'
  end
end

Then /^I am able to view the Brand Satisfaction rating if available$/ do
  if @product_page.ownersviews?
    assert @product_page.satisfaction?, 'Brand Satisfaction rating missing'
  else
    puts 'Cannot find Owners Views section, Brand Satisfaction check ignored'
  end
end

Then /^I am able to view the Brand Reliability rating if available$/ do
  if @product_page.ownersviews?
    assert @product_page.reliability?, 'Brand Reliability rating missing'
  else
    puts 'Cannot find Owners Views section, Brand Reliability check ignored'
  end
end


  #puts 'Checking Add To Favourites button present'
    #assert @product_page.addtofave?, 'Add to Favourites button missing'

