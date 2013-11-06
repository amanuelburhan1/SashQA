class Product_Review
  include PageObject
  page_url("#{BASE_URL}/product/Samsung_UE40ES8000/review")

  #Full Review
  p(:curated, :xpath => '//div[@class="curated-review-intro"]/p')
  p(:cmsreview, :xpath => '//div[@class="cms-review"]/p')
  h2(:launchdate, :class => 'which-review-subtitle')
  p(:pros, :class => 'positive')
  p(:cons, :class => 'negative')
  p(:prostext, :xpath => '/html/body/main/article[2]/dl/dd')
  p(:constext, :xpath => '/html/body/main/article[2]/dl/dd[2]')
  h1(:memberreviews, :xpath => '/html/body/main/article[@class="which-user-generated"]/h1')
  div(:pluckwidget, :class => 'pluck-review-main-area')

  div(:averagereevoo, :class => 'average_score')
  h1(:reevooreviewer, :class => 'attribution-name')

end
