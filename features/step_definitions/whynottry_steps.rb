# Encoding: utf-8

Then /^I see a recommended TV under Something Different$/ do  
    @brand = @browser.execute_script("return document.getElementsByClassName('brand')[0].textContent")
    @model = @browser.execute_script("return document.getElementsByClassName('model')[0].textContent")  

    assert @product_page.price?, 'No Price Runner data for this TV, Why Not Try expected to fail'
    
    if @product_page.different?
      assert_not_equal @brand, @product_page.differentbrand, 'Brand for Something different should be DIFFERENT to selected product'
      assert_not_equal @model, @product_page.differentmodel, 'Why Not Try should not display same model as selected product'
    else
      puts 'Something Different not available for this TV'
    end
end


Then /^I see a recommended TV under For a little more$/ do
    @brand = @browser.execute_script("return document.getElementsByClassName('brand')[0].textContent")
    @model = @browser.execute_script("return document.getElementsByClassName('model')[0].textContent")

    assert @product_page.price?, 'No Price Runner data for this TV, Why Not Try expected to fail'

    if @product_page.littlemore?
      assert_operator @product_page.moreprice.gsub('£','').gsub(',','').to_i, :>=, @product_page.price.gsub('£','').gsub(',','').to_i, 'Tv should be more expensive than selected product'
      assert_equal @product_page.morebrand, @brand, 'TV should be same brand as selected product'
      assert_not_equal @model, @product_page.moremodel, 'Why Not Try should not display same model as selected'
    else
      puts 'A Little More not available for this TV'
    end
end


Then /^I see a recommended TV under For a little less$/ do
    @brand = @browser.execute_script("return document.getElementsByClassName('brand')[0].textContent")
    @model = @browser.execute_script("return document.getElementsByClassName('model')[0].textContent")

    assert @product_page.price?, 'No Price Runner data for this TV, Why Not Try expected to fail'

    if @product_page.littleless?
      assert_operator @product_page.lessprice.gsub('£','').gsub(',','').to_i, :<=, @product_page.price.gsub('£','').gsub(',','').to_i, 'Tv should be less expensive than selected product'
      assert_equal @product_page.lessbrand, @brand, 'Tv should be same brand as selected product'
      assert_not_equal @model, @product_page.lessmodel, 'Why Not Try should not display same model as selected'
    else
      puts 'A Little Less not available for this TV'
    end
end


And /^I see any recommended TV$/ do
    if @product_page.different?
    elsif @product_page.more?  
    elsif @product_page.less?
    else
      puts 'Recommended TVs unavailable, any dependent tests are expected to fail'
    end 
end


Then /^I can click the Full Review link for that recommended TV$/ do
@model = @browser.execute_script("return document.getElementsByClassName('model')[0].textContent")

  assert @product_page.whynottryreview?, 'Cannot find Full Review link for recommended TV'
  @product_page.whynottryreview
  assert_not_equal @browser.execute_script("return document.getElementsByClassName('model')[0].textContent"), @model, 'Model has not changed'
end
