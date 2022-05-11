require 'rspec'
require 'watir'
require 'helper'
require 'roo'
require 'page_elements/objects'

#Sign in page, first step for registration process-sending all emails previously written in excel file
#Usage of gem 'roo'

CREATION_URL='http://www.automationpractice.com/index.php?controller=authentication&back=my-account#account-creation'
URL='http://www.automationpractice.com/index.php?controller=authentication&back=my-account'

describe 'Importing emails for sign-up from excel file ' do
    
    let(:actions) {@main.methods}

    context 'Email invalid format check' do

        data = Roo::Spreadsheet.open('./spec/data/proba.xlsx')
        rowCount = data.last_row

        it 'Click on Sign in button' do 
            actions.click_sign_in
        end

        it 'Fill invalid data from excel Spreadsheet' do 

        for i in 2..rowCount do
           
            input=data.cell('A',i).to_s
            actions.send_email(input);
            sleep 2
            actions.createAccButton
            sleep 3
            
            if(@browser.url != CREATION_URL)
                sleep 0.1
                @browser.goto(URL)
            end

        end

        end

    end

end