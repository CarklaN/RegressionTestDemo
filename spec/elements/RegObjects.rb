class RegObjects

@name=""
@surname=""
@email=""
@password=""

#Methods for your personal information

def self.gender(driver, title)
	#Mr or Mrs
	title.upcase
	if title=="MR"
		driver.input(id: "id_gender1").click 
	elsif title=="MRS"
		driver.input(id: "id_gender2").click 
	else
		puts "Wrong gender"
        end 
end

def self.send_email(drive, email)
  drive.input(id: 'email_create').set email
  @email1=email
end

def self.setName(driver,firstName)
	driver.input(id: "customer_firstname").set firstName
	@name=firstName
end

def self.setLastName(driver, lastName)
	driver.input(id: "customer_lastname").set lastName
	@surname=lastName
end

def self.password(driver, password)
	driver.input(id: "passwd").set password
end

def self.birth(driver, day, month, year)
	driver.select_list(id: "days").select(value: day)
	driver.select_list(id: "months").select(value: month)
	driver.select_list(id: "years").select(value: year)	
end

def self.checkbox(driver, checkbox1, checkbox2)
	if(checkbox1!=nil && checkbox2!=nil)
	driver.input(id: "newsletter").click 
	driver.input(id: "optin").click
        end
end

#Methods for address box

def self.compareNames(driver)
	addressName=driver.input(id: "firstname").value
	addressSurname=driver.input(id: "lastname").value

	if(@name==addressName && @surname==addressSurname)
		return true
	end
end

def self.address(driver, company,address,address2, city)
	driver.input(id: "company").set company
	driver.input(id: "address1").set address
	driver.input(id: "address2").set address2
	driver.input(id: "city").set city
end

def self.zipCode(driver, zipCode)
	driver.input(id: "postcode").set zipCode
end


def self.countryState(driver, country, state)
	driver.select_list(id: "id_country").select(text: country)
	driver.select_list(id: "id_state").select(text: state)
end

def self.additionalText(driver, string)
	driver.textarea(id: "other").set string
end

def self.phone(driver, homePhone, mobilePhone)
	driver.input(id: "phone").set homePhone
	driver.input(id: "phone_mobile").set mobilePhone
end

def self.allias(driver,aliass)
	driver.input(id: "alias").set aliass
end

def self.upload(driver)
	driver.button(id: "submitAccount").click
end

#PERSONAL INFO VALUES

def self.openMyPersonalInfo(driver)
	driver.a(title: "Information").double_click
end

def self.checkPersonalInfo(driver)
	regEmail=driver.input(id: "email").value
	regName=driver.input(id: "firstname").value
	regSurname=driver.input(id: "lastname").value

	if(@email==regEmail && @name==regName && @surname==regSurname)
		return true
	else
		return false
	end
		
end

end