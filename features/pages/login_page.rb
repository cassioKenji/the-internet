require 'site_prism'

class Login < SitePrism::Page

  set_url "http://the-internet.herokuapp.com/login"

  element :username_field, "input#username"
  element :password_field, "input#password"
  element :submit_button, "buton.radius"

end
