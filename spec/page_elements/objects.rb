require 'helper'
require 'page_elements/page_container'

class Objects < HomePage

#Elements for purchase workflow

# Sign in button
def click_sign_in
  @browser.a(class:'login').click
end

#Create an accout button
def createAccButton
  @browser.button(class: "btn btn-default button button-medium exclusive").click 
end

def send_email(email)
  @browser.input(id: 'email_create').set email
end

# 1. Sign in method
def send_credentials(email, password)
  @browser.a(class: 'login').click
  sleep 3
  @browser.input(id: 'email').set email
  @browser.input(id: 'passwd').set password
  @browser.button(id: 'SubmitLogin').click
end

# 2. Clickability of exposed poducts and adding to the cart

# 2.1 Click on the item
def click_on_the_item(product_name)
  @browser.a(title: product_name).click
end

# 2.2 Choose product quantity
def quantity(product_quantity)
  @browser.input(id:'quantity_wanted').set product_quantity
end

# 2.3 Choose product size
def size(product_size)
  @browser.select(id: 'group_1').option(title: product_size.upcase).click
end

# 2.4 Choose product color
def color(product_color)
  @browser.a(name: product_color).click
end

# 2.5 Add to cart
def cart
  @browser.button(name: 'Submit').click 
  sleep 2
end

# 3 Checkout path methods

# 3.1 Proceed to checkou pop-up window
def button_popup
  @browser.a(class: 'btn btn-default button button-medium').click
end

# 3.2 Proceed to checkout-2 times
def button2
  @browser.a(class: 'button btn btn-default standard-checkout button-medium').click
  sleep 1
  @browser.button(class: 'button btn btn-default button-medium').click
  sleep 1
end

# 3.3 Accept terms and conditions, proceed to payment
def accept_terms_checkout
  @browser.input(id: 'cgv').click
  @browser.button(name: 'processCarrier').click
end

# 3.4 Choose payment option and confirm order: 
def payment(payment_options) 
  #two possile payment options: 'bankwire' and 'cheque'
  @browser.a(class: payment_options).click
  sleep 1
  @browser.button(class: 'button btn btn-default button-medium').click
end

#Return to home-logo button
def navigate_to_home
  @browser.img(class: 'logo img-responsive').click
end

end

