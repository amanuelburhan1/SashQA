class Product_Results
  include PageObject
  page_url("#{BASE_URL}/product/Samsung_UE40ES8000/results")

  #Test Results
  p(:scoresvg, :xpath => '//span[@class="percentage-score"]/em')
  button(:scorebreakdown, :css => 'button.toggle-btn.show-more-link.link-right')
  ul(:breakdownlist, :css => 'div.how-we-calculate ul')

  span(:standardpic, :xpath => '/html/body/main/div/article[2]/div/div/div/span')
  span(:hdpic, :xpath => '/html/body/main/div/article[3]/div/div/div/span')
  span(:sound, :xpath => '/html/body/main/div/article[4]/div/div/div/span')
  span(:easeofuse, :xpath => '/html/body/main/div/article[5]/div/div/div/span')
  span(:energy, :xpath => '/html/body/main/div/article[6]/div/div/div/span')

  button(:howwetest, :xpath => '/html/body/main/article[2]/article/span/span')
  p(:howwetestcontent, :xpath => '/html/body/main/article[2]/article/div/p')
end
