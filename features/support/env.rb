require 'rubygems'
require 'bundler/setup'

require 'selenium-webdriver'
require 'page-object'
require 'test-unit'
#require 'httparty'


browser_name = (ENV['BROWSER'] || 'firefox').to_sym
browser = Selenium::WebDriver.for browser_name
BASE_URL = ENV['BASE_URL'] || 'http://www.which.co.uk/beta/reviews/tv'


Before do
  @browser = browser
  @browser.manage.window.resize_to(1080,1000)
  @home_page = HomePage.new(@browser)
  @product_page = Product.new(@browser)
  @product_review_page = Product_Review.new(@browser)
  @product_results_page = Product_Results.new(@browser)
  @comparison_page = Comparison.new(@browser)
  @favourites_page = Favourites.new(@browser)
  @search_page = Search.new(@browser)
  @login = Login.new(@browser)
  @listing_page = Listing_Page.new(@browser)

  #For API testing
  #@baseuri = 'https://dev.services.which.co.uk/product-api/products/'
  #@product = 'Samsung_UE55ES8000'
  #@apikey = '?api_key=TEST-KEY'
  #@response = HTTParty.get(@baseuri + @product + @apikey)
end


After do |scenario|
  if scenario.failed?
  	screenshot = "./screenshots/FAILED_#{scenario.name.gsub(' ','_').gsub(/[^0-9A-Za-z_]/, '')}.png"
  	browser.save_screenshot(screenshot)
  	embed screenshot, 'image/png'
  end
end

at_exit do
  browser.quit
end
