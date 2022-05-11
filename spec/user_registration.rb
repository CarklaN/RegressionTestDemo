require 'rspec'
require 'watir'
require 'helper'
require 'page_elements/objects'
require 'page_elements/reg_objects'
require 'shared_context/login_shared'

describe 'Registration Test Case: valid credentials' do

    let(:action) {@main.methods}
    let(:actions) {@main.registration}

    context 'Fill Registration form' do

        it 'Click on Sign in button' do 
            action.click_sign_in
            sleep 1
        end
     
        it 'Submit valid email' do 
            actions.send_email("nikkollaa4@klak.rss")
        end

        #YOUR PERSONAL INFORMATION

        it 'Choose gender' do 
            actions.gender("m")
        end

        it 'Set name' do 
            actions.set_name("Nikola")
        end

        it 'Set surname' do 
            actions.set_last_name("Nikolic")
        end

        it 'Set password' do 
            actions.password("vlado")
        end

        it 'Sate date of birth' do
            actions.birth(21,5,1996)
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
            actions.address("Striko iz njemacke", "Glavna ul", "Sporedna ulica", "Sarajevo")
        end

        it 'Set country and state' do 
            actions.country_state("United States", "New York")
        end

        it 'Set zip code' do 
            actions.zipcode(12345)
        end

        it 'Fill additional information' do 
            actions.additional_text("ispisi svega pomalo")
        end

        it 'Register home/mobile phone' do 
            actions.phone(123456789,123456788)
        end

        it 'Assign an address alias' do 
            actions.allias("Adresa za postu")
        end

        #REGISTER

        it 'Submit all data' do 
            actions.upload
        end

        sleep 2

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
