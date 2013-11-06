Given /^I am a logged in Member$/ do
  if @login.account?
  else
    @home_page.goto
    assert @login.username?, 'Cannot find Username field'
    assert @login.password?, 'Cannot find Password field'
    @login.username = 'Selenium001'
    @login.password = 'password'
    @login.login
    sleep 3
    assert @login.account?, 'Login Failed'
  end
end


Given /^I am not Logged In$/ do
  if @login.account?
      @login.account
      sleep 3
      @login.logout
  end
end


Given /^I visit the Sashimi ([a-z ]+) Page$/ do |entry|
  case entry
    when 'landing'
      @home_page.goto
    when 'product'
      @product_page.goto
    when 'comparison'
      @comparison_page.goto
    when 'favourites'
      @favourites_page.goto
    when 'search'
      @search_page.goto
  end
end


And /^I am prompted to Log In$/ do  
  assert @login.username?, 'Cannot find Username field'
  assert @login.password?, 'Cannot find Password field'
end


And /^I enter my Login details$/ do  
  @login.username = 'Selenium001'
    @login.password = 'password'
    @login.login
    sleep 3
    assert @login.account?, 'Login Failed'
end


Then /^I Log Out$/ do  
  @login.account
  sleep 2
  @login.logout
end


Then /^I should see the Sashimi ([a-z ]+) Page$/ do |entry|
  case entry
    when 'landing'
      assert_equal 'TV - Beta - Which? Technology', @home_page.title, 'Wrong url landed on'
    when 'product'
      assert_equal 'Samsung UE40ES8000 - Beta - Which? Technology', @home_page.title, 'Wrong url landed on'
    when 'comparison'
      assert_equal 'Comparison - Beta - Which? Technology', @home_page.title, 'Wrong url landed on'
    when 'favourites'
      assert_equal 'Favourites - Beta - Which? Technology', @home_page.title, 'Wrong url landed on'
    when 'search'
      assert_equal 'Search - Beta - Which? Technology', @home_page.title, 'Wrong url landed on'
  end
end

