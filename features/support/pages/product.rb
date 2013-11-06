class Product
  include PageObject
  page_url("#{BASE_URL}/product/Samsung_UE40ES8000")

  #Head of page
  div(:brand, :xpath => '/html/body/header/div/article[2]/div/hgroup/div')
  div(:model, :xpath => '/html/body/header/div/article[2]/div/hgroup/div[2]')
  paragraph(:headscore, :xpath => '//ul[@class="header-link-sections"]/li/div/span/em')
  paragraph(:bestbuy, :xpath => '//ul[@class="header-link-sections"]/li/div[2]/span/span')
  span(:price, :xpath => '//div[@class="price-info-control"]/button/span/span/span')
  button(:pricepredictor, :css => 'button.toggle-price-info.toggle-price-history')
  button(:wheretobuy, :css => 'button.toggle-price-info.toggle-where-to-buy')
  link(:viewfave, :class => 'view-favourites')
  button(:addtofave, :class => 'action-add')
  link(:summary, :link_text => 'Product Summary')
  link(:review, :link_text => 'Full Review')
  link(:results, :link_text => 'Test Results')
  link(:spec, :link_text => 'Technical Specification')
  button(:addtofave, :class => 'add-to-favourites')


  #Price Runner Window
  table(:pricetable, :class => 'prices')
  link(:buyit, :class => 'link-buy-it')
  p(:retailer, :xpath => '/html/body/header/article[2]/div/div[3]/div/table/thead/tr/th')
  p(:availability, :xpath => '/html/body/header/article[2]/div/div[3]/div/table/thead/tr/th[2]')
  p(:prprice, :xpath => '/html/body/header/article[2]/div/div[3]/div/table/thead/tr/th[3]')
  p(:deliveryprice, :xpath => '/html/body/header/article[2]/div/div[3]/div/table/thead/tr/th[4]')
  div(:retailerrating, :xpath => '/html/body/header/article[2]/div/div[3]/div/table/tbody/tr[5]/th/div[@class="star-rating"]')
  p(:bestprice, :class => 'price-best')
  p(:secondprice, :xpath => '/html/body/header/article[2]/div/div[3]/div/table/tbody/tr[2]/td[3]')
  p(:thirdprice, :xpath => '/html/body/header/article[2]/div/div[3]/div/table/tbody/tr[3]/td[3]')


  #Hotspots
  button(:picturehs, :xpath => '//article[@id="productHotspot1"]/h1/button')
  paragraph(:picturetext, :xpath => '/html/body/main/article/div/article/div/p[2]')
  button(:soundhs, :xpath => '//article[@id="productHotspot2"]/h1/button')
  paragraph(:soundtext, :xpath => '/html/body/main/article/div/article[2]/div/p[2]')
  button(:easehs, :xpath => '//article[@id="productHotspot3"]/h1/button')
  paragraph(:easetext, :xpath => '/html/body/main/article/div/article[3]/div/p[2]')
  button(:displayhs, :xpath => '/html/body/main/article/div[2]/article[4]/h1/button')
  paragraph(:displaytext, :xpath => '/html/body/main/article/div/article[4]/div/p[2]')
  button(:connecths, :xpath => '/html/body/main/article/div[2]/article[5]/h1/button')
  button(:energyhs, :xpath => '/html/body/main/article/div[2]/article[6]/h1/button')
  paragraph(:energytext, :xpath => '/html/body/main/article/div/article[6]/div/div[3]')

  #Links at bottom of TV
  link(:threesixty, :xpath => '/html/body/main/article/nav/ul/li/a')
  link(:threesixtyactive, :xpath => '/html/body/main/article/nav/ul/li/a[@class="active"]')
  link(:front, :link_text => 'Front')
  image(:fronttv, :src => 'http://www.staticwhich.co.uk/static/images/products/tv/Samsung_UE40ES8000/panoramic/desktop/01.jpg')
  link(:right, :link_text => 'Right')
  image(:righttv, :xpath => '/html/body/main/article/div[2]/div/img[10]')
  link(:back, :link_text => 'Back')
  image(:backtv, :xpath => '/html/body/main/article/div[2]/div/img[10]')
  link(:left, :link_text => 'Left')
  image(:lefttv, :xpath => '/html/body/main/article/div[2]/div/img[28]')

  #Which Verdict
  h1(:whichverdictheader, :class => 'productPageCategoryHeader')
  h2(:whichverdicttext, :class => 'headline-review')
  h2(:score, :xpath => '//h2[@class="headline-review"]/span/span/em')
  link(:readreview, :xpath => '/html/body/main/article[2]/div/div/a')

  #Owners Views
  h1(:ownersviews, :xpath => '/html/body/main/article[2]/div/aside/h1')
  link(:reevoo, :class => 'reviews')
  span(:satisfaction, :xpath => '/html/body/main/article[2]/div/aside/div[2]/span')
  span(:reliability, :xpath => '/html/body/main/article[2]/div/aside/div[3]/span')

  #Why Not Try section
  h1(:whynottitle, :xpath => '/html/body/main/article[5]/h1')

  list_item(:different, :class => 'something-different')
  span(:differentbrand, :xpath => '//li[@class="something-different"]/div/div/div[3]/div/a/span')
  span(:differentmodel, :xpath => '//li[@class="something-different"]/div/div/div[3]/div/a/span[2]')
  link(:whynottryread, :xpath => '/html/body/main/article[5]/ul/li/a[@class="review-link"]')

  list_item(:littlemore, :class => 'little-more')
  span(:moreprice, :xpath => '//li[@class="little-more"]/div/div/div[3]/div[3]/span')
  span(:morebrand, :xpath => '//li[@class="little-more"]/div/div/div[3]/div/a/span')
  span(:moremodel, :xpath => '//li[@class="little-more"]/div/div/div[3]/div/a/span[2]')

  list_item(:littleless, :class => 'little-less')
  span(:lessprice, :xpath => '//li[@class="little-less"]/div/div/div[3]/div[3]/span')
  span(:lessbrand, :xpath => '//li[@class="little-less"]/div/div/div[3]/div/a/span')
  span(:lessmodel, :xpath => '//li[@class="little-less"]/div/div/div[3]/div/a/span[2]')

  link(:whynottryreview, :css => 'article.product-gallery.why-not-try.container a.link-right.icon-right')


  #Rest of Product tabs links
  link(:fullreview, :class => 'review')
  link(:testresults, :class => 'results')
  link(:testspecs, :class => 'spec')

end

