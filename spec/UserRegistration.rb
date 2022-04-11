require 'rspec'
require 'watir'
require 'elements/RegObjects'

describe 'REGRESSION: Valid Registration Test Case:' do

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
     
        it 'Submit valid email' do 
            RegObjects.send_email(@browser, "nikkollaa4@klak.rss")
            @browser.button(id: 'SubmitCreate').click
        end

        #YOUR PERSONAL INFORMATION

        it 'Choose gender' do 
            RegObjects.gender(@browser,"m")
        end

        it 'Set name' do 
            RegObjects.setName(@browser, "Nikola")
           # @name=setName.get(firstName)
        end

        it 'Set surname' do 
            RegObjects.setLastName(@browser, "Nikolic")
            #@surname=setName.get(firstName)
        end

        it 'Set password' do 
            RegObjects.password(@browser, "vlado")
        end

        it 'Sate date of birth' do
            RegObjects.birth(@browser,21,5,1996)
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
            RegObjects.address(@browser, "Striko iz njemacke", "Glavna ul", "Sporedna ulica", "Sarajevo")
        end

        it 'Set country and state' do 
            RegObjects.countryState(@browser,"United States", "New York")
        end

        it 'Set zip code' do 
            RegObjects.zipCode(@browser, 12345)
        end

        it 'Fill additional information' do 
            RegObjects.additionalText(@browser,"ispisi svega pomalo")
        end

        it 'Register home/mobile phone' do 
            RegObjects.phone(@browser,123456789,123456788)
        end

        it 'Assign an address alias' do 
            RegObjects.allias(@browser, "Adresa za postu")
        end

        #REGISTER

        it 'Submit all data' do 
            RegObjects.upload(@browser)
        end

        sleep 2

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
