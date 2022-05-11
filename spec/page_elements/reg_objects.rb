require 'helper'
require 'page_elements/page_container'

class RegObjects < HomePage

#Necessary elements and methods for registration process

@name=""
@surname=""
@email=""
@password=""

#Methods for your personal information

def gender(title)
	#Mr or Mrs
	title.upcase
	if title=="MR"
		@browser.input(id: "id_gender1").click 
	elsif title=="MRS"
		@browser.input(id: "id_gender2").click 
	else
		puts "Wrong gender"
        end 
end

def send_email(email)
  @browser.input(id: 'email_create').set email
  @email1=email
  @browser.button(id: 'SubmitCreate').click
end

def set_name(first_name)
	@browser.input(id: "customer_firstname").set first_name
	@name=first_name
end

def set_last_name(last_name)
	@browser.input(id: "customer_lastname").set last_name
	@surname=last_name
end

def password(password)
	@browser.input(id: "passwd").set password
end

def birth(day, month, year)
	@browser.select_list(id: "days").select(value: day)
	@browser.select_list(id: "months").select(value: month)
	@browser.select_list(id: "years").select(value: year)	
end

def checkbox(checkbox1, checkbox2)
	if(checkbox1!=nil && checkbox2!=nil)
	@browser.input(id: "newsletter").click 
	@browser.input(id: "optin").click
        end
end

#Methods for address box

def compare_names
	add_name=@browser.input(id: "firstname").value
	add_surname=@browser.input(id: "lastname").value

	if(@name==add_name && @surname==add_surname)
		return true
	end
end

def address(company,address,address2, city)
	@browser.input(id: "company").set company
	@browser.input(id: "address1").set address
	@browser.input(id: "address2").set address2
	@browser.input(id: "city").set city
end

def zipcode(zipcode)
	@browser.input(id: "postcode").set zipcode
end


def country_state(country, state)
	@browser.select_list(id: "id_country").select(text: country)
	@browser.select_list(id: "id_state").select(text: state)
end

def additional_text(string)
	@browser.textarea(id: "other").set string
end

def phone(home_phone, mobile_phone)
	@browser.input(id: "phone").set home_phone
	@browser.input(id: "phone_mobile").set mobile_phone
end

def allias(aliass)
	@browser.input(id: "alias").set aliass
end

def upload
	@browser.button(id: "submitAccount").click
end

#PERSONAL INFO VALUES

def open_my_personal_info
	@browser.a(title: "Information").double_click
end

def check_personal_info
	reg_email=@browser.input(id: "email").value
	reg_name=@browser.input(id: "firstname").value
	reg_surname=@browser.input(id: "lastname").value

	if(@email==reg_email && @name==reg_name && @surname==reg_surname)
		return true
	else
		return false
	end
		
end

end