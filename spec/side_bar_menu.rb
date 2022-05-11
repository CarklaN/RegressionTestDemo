require 'rspec'
require 'watir'
require 'helper'
require 'page_elements/filter_objects'

#Automated tests of sidebar dropdown menus, comparing actual url after clicking on sidebar option vs expected result

WOMEN_URL='http://automationpractice.com/index.php?id_category=3&controller=category'
TOPS_URL='http://automationpractice.com/index.php?id_category=4&controller=category'
TSHIRTS_URL='http://automationpractice.com/index.php?id_category=5&controller=category'
BLOUSES_URL='http://automationpractice.com/index.php?id_category=7&controller=category'
DRESSES_URL='http://automationpractice.com/index.php?id_category=8&controller=category'
CASUALDRESS_URL='http://automationpractice.com/index.php?id_category=9&controller=category'
EVENINGDRESS_URL='http://automationpractice.com/index.php?id_category=10&controller=category'
SUMMERDRESS_URL='http://automationpractice.com/index.php?id_category=11&controller=category'

describe 'Side bar menu comparison of expected and actual urls:' do 

    let(:actions) {@main.filters}

    context 'Validate sidebar dropdown menu' do 

    	before {@browser.goto('http://automationpractice.com/index.php?id_category=3&controller=category')} 
    		
    	it 'Clickability of TOPS' do
    		actions.tops_button
    		sleep 2
    		expect(@browser.url).to eql(TOPS_URL)
    	end

    	it 'Opening dropdown menu TOPS and choosing T-shirts' do 
    		actions.open_tops_drop
    		sleep 1
    		actions.open_tshirts
    		expect(@browser.url).to eql(TSHIRTS_URL)
    	end

    	it 'Opening dropdown menu TOPS and choosing Blouses' do 
    		actions.open_tops_drop
    		sleep 1
    		actions.open_blouses
    		expect(@browser.url).to eql(BLOUSES_URL)
    	end

    	it 'Clickability of Dresses' do 
    		actions.dresses_button
    		sleep 2
    		expect(@browser.url).to eql(DRESSES_URL)
        end

        it 'Opening dropdown menu Dresses and choosing Casual Dresses' do 
        	actions.open_dress_drop
    		sleep 1
    		actions.open_casual_dress
    		expect(@browser.url).to eql(CASUALDRESS_URL)
    	end

    	it 'Opening dropdown menu Dresses and choosing Evening Dressses' do 
    		actions.open_dress_drop
    		sleep 1
    		actions.open_evening_dress
    		expect(@browser.url).to eql(EVENINGDRESS_URL)
    	end

    	it 'Opening dropdown menu Dresses and choosing Summer Dresses' do 
    		actions.open_dress_drop
    		sleep 1
    		actions.open_summer_dress
    		expect(@browser.url).to eql(SUMMERDRESS_URL)
    	end

    end

end