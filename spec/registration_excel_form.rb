require 'rspec'
require 'watir'
require 'roo'
require 'helper'
require 'page_elements/objects'
require 'page_elements/reg_objects'

#Workflow of registration, implementation of 'roo' gem and usage of data from excel file



describe 'Valid Registration importing data from Excel form:' do

    let(:actions) {@main.registration}
    let(:action) {@main.methods}

    context 'Fill Registration form' do

        it 'Click on Sign in button' do 
            action.click_sign_in
            sleep 1
        end

        data = Roo::Spreadsheet.open('./spec/data/RegistrationForm.xlsx')
        rowCount = data.last_row

        for i in 2..rowCount

        it 'Submit valid email' do 
            actions.send_email(data.cell('A',i))
        end

        #YOUR PERSONAL INFORMATION

        it 'Choose title' do 
            actions.gender(data.cell('B',i))
        end


        it 'Set name' do 
            actions.set_name(data.cell('C',i))
        end

        it 'Set surname' do 
            actions.set_last_name(data.cell('D',i))
        end

        it 'Set password' do 
            actions.password(data.cell('E',i))
        end

        it 'Sate date of birth' do
            actions.birth(data.cell('F',i), data.cell('G',i),data.cell('H',i))
            sleep 1
        end

        it 'Mark checkboxes' do 
            actions.checkbox(1,1)
        end

        #YOUR ADDRESS

        it 'Check first name and last name' do 
            actions.compare_names
        end

        it 'Set company name, address, address 2 and City' do 
            actions.address(data.cell('I',i), data.cell('J',i), data.cell('K',i), data.cell('L', i)) #(company name, address 1, address 2, city)
        end

        it 'Set country and state' do 
            actions.country_state(data.cell('O',i), data.cell('M',i))
        end

        it 'Set zip code' do 
            actions.zipcode(data.cell('N',i))
        end

        it 'Fill additional information' do 
            actions.additional_text("Add extra description")
        end

        it 'Register home/mobile phone' do 
            actions.phone(data.cell('Q',i),data.cell('R',i))
        end

        it 'Assign an address alias' do 
            actions.allias(data.cell('S',i))
        end

        #REGISTER

        it 'Submit all data' do 
            actions.upload
        end

        #CHECK RESULTS

        it 'My account web page supposed to show up after successful registration' do
            expect(@browser.h1(class: 'page-heading').text).to eql('MY ACCOUNT')
        end

        it 'My personal information check' do
            actions.open_my_personal_info
            sleep 3
            expect(actions.check_personal_info).to_be true
        end

        end

    end

end