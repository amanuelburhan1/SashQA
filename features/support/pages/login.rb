class Login
  include PageObject

  text_area(:username, :id => 'username')
  text_area(:password, :id => 'password')
  button(:login, :src => 'https://www.which.co.uk/assets/images/buttons/btn-login.png')
  button(:account, :xpath => '/html/body/div/div/div[2]/a[3]/div')
  link(:logout, :id => 'om-logout-tn')

end
