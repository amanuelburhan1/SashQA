class Search
  include PageObject
  page_url("#{BASE_URL}/search")
  #page_url("http://www.which.co.uk/beta/reviews/tv/search")

  button(:search, :class => 'icon-search')
  text_area(:searchfield, :name => 'q')
  button(:submit, :css => 'button.search-submit.icon-search')
  div(:helptext, :class => 'error-message')

  span(:count, :class => 'product-count')
end
