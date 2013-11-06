class Listing_Page
  include PageObject
  page_url("#{BASE_URL}/search")

 button(:openfilters, :css => 'button.toggle-filters')
 end