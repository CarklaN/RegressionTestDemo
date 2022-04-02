require 'rspec'
require 'watir'
require 'roo'
require 'elements/Objects'

CREATION_URL='http://www.automationpractice.com/index.php?controller=authentication&back=my-account#account-creation'
URL='http://www.automationpractice.com/index.php?controller=authentication&back=my-account'

describe 'Smoke Test Cases: ' do
    before :all do
        
        @browser = Watir::Browser.new:chrome
        @browser.window.maximize
        @browser.goto(URL)
        sleep 5
    end

    after :all do
        @browser.close
    end

    context 'Email invalid format check' do

        data = Roo::Spreadsheet.open('./spec/data/proba.xlsx')
        rowCount = data.last_row

        it 'fill invalid data from excel Spreadsheet' do 

        for i in 2..rowCount do
           
            input=data.cell('A',i).to_s
            Objects.send_email(@browser, input);
            sleep 2
            Objects.createAccButton(@browser)
            sleep 3
            
            if(@browser.url != CREATION_URL)
                sleep 0.1
                @browser.goto(URL)
            end

        end

        end

    end

end