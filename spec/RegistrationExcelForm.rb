require 'rspec'
require 'watir'
require 'roo'
require '/elements/RegObjects'

data = Roo::Spreadsheet.open('./spec/data/RegistrationForm.xlsx')
rowCount = data.last_row

describe 'REGRESSION: Valid Registration importing data from Excel form:' do
    before :all do
        @browser = Watir::Browser.new:chrome
        @browser.window.maximize
        @browser.goto('http://www.automationpractice.com/index.php?controller=authentication&back=my-account')
        sleep 5
    end

    after :all do
        @browser.close
    end

    context 'Fill Registration form' do

    for i in 2..rowCount

        email=data.cell('A',i)
        title=data.cell('B',i)
        nameExcel=data.cell('C',i)
        surnameExcel=data.cell('D',i)
        pass=data.cell('E',i)
        d=data.cell('F',i)
        m=data.cell('G',i)
        y=data.cell('H',i)
        company=data.cell('I',i)
        address1=data.cell('J',i)
        address2=data.cell('K',i)
        city=data.cell('L', i)
        state=data.cell('M',i)
        zipCode=data.cell('N',i)
        country=data.cell('O',i)
        homePho=data.cell('Q',i)
        mobilePho=data.cell('R',i)
        alliasAddress=data.cell('S',i)

        it 'Submit valid email' do 
            RegObjects.send_email(@browser, email)
            @browser.button(id: 'SubmitCreate').click
        end

        #YOUR PERSONAL INFORMATION

        it 'Choose title' do 
            RegObjects.gender(@browser, title)
        end


        it 'Set name' do 
            RegObjects.setName(@browser, nameExcel)
        end

        it 'Set surname' do 
            RegObjects.setLastName(@browser, surnameExcel)
        end

        it 'Set password' do 
            RegObjects.password(@browser, pass)
        end

        it 'Sate date of birth' do
            RegObjects.birth(@browser,d,m,y)
            sleep 1
        end

        it 'Mark checkboxes' do 
            RegObjects.checkbox(@browser,1,1)
        end

        #YOUR ADDRESS

        it 'Check first name and last name' do 
            RegObjects.compareNames(@browser)
        end

        it 'Set company name, address, address 2 and City' do 
            RegObjects.address(@browser, company, address1, address2, city)
        end

        it 'Set country and state' do 
            RegObjects.countryState(@browser, country, state)
        end

        it 'Set zip code' do 
            RegObjects.zipCode(@browser, zipCode)
        end

        it 'Fill additional information' do 
            RegObjects.additionalText(@browser,"ispisi svega pomalo")
        end

        it 'Register home/mobile phone' do 
            RegObjects.phone(@browser,homePho,mobilePho)
        end

        it 'Assign an address alias' do 
            RegObjects.allias(@browser, alliasAddress)
        end

        #REGISTER

        it 'Submit all data' do 
            RegObjects.upload(@browser)
        end

        #CHECK RESULTS

        it 'My account web page supposed to show up after successful registration' do
            expect(@browser.h1(class: 'page-heading').text).to eql('MY ACCOUNT')
        end

        it 'My personal information check' do
            RegObjects.openMyPersonalInfo(@browser)
            sleep 3
            expect(RegObjects.checkPersonalInfo(@browser)).to_be true
        end

    end

    end

end