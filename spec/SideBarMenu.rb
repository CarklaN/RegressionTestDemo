require 'rspec'
require 'watir'
require 'elements/FilterObjects'

WOMEN_URL='http://automationpractice.com/index.php?id_category=3&controller=category'
TOPS_URL='http://automationpractice.com/index.php?id_category=4&controller=category'
TSHIRTS_URL='http://automationpractice.com/index.php?id_category=5&controller=category'
BLOUSES_URL='http://automationpractice.com/index.php?id_category=7&controller=category'
DRESSES_URL='http://automationpractice.com/index.php?id_category=8&controller=category'
CASUALDRESS_URL='http://automationpractice.com/index.php?id_category=9&controller=category'
EVENINGDRESS_URL='http://automationpractice.com/index.php?id_category=10&controller=category'
SUMMERDRESS_URL='http://automationpractice.com/index.php?id_category=11&controller=category'

describe 'REGRESSION: Valid Registration Test Case:' do

    before :all do
        @browser = Watir::Browser.new:chrome
        @browser.window.maximize
        @browser.goto('http://automationpractice.com/index.php?id_category=3&controller=category')
        sleep 5
    end

    after :all do
        @browser.close
    end

    context 'Validate sidebar dropdown menu' do 

    	before {@browser.goto('http://automationpractice.com/index.php?id_category=3&controller=category')} 
    		
    	it 'Clickability of TOPS' do
    		FilterObjects.topsButton(@browser)
    		sleep 2
    		expect(@browser.url).to eql(TOPS_URL)
    	end

    	it 'Opening dropdown menu TOPS and choosing T-shirts' do 
    		FilterObjects.openTopsDrop(@browser)
    		sleep 1
    		FilterObjects.openTshirts(@browser)
    		expect(@browser.url).to eql(TSHIRTS_URL)
    	end

    	it 'Opening dropdown menu TOPS and choosing Blouses' do 
    		FilterObjects.openTopsDrop(@browser)
    		sleep 1
    		FilterObjects.openBlouses(@browser)
    		expect(@browser.url).to eql(BLOUSES_URL)
    	end

    	it 'Clickability of Dresses' do 
    		FilterObjects.dressesButton(@browser)
    		sleep 2
    		expect(@browser.url).to eql(DRESSES_URL)
        end

        it 'Opening dropdown menu Dresses and choosing Casual Dresses' do 
        	FilterObjects.openDressDrop(@browser)
    		sleep 1
    		FilterObjects.openCasualDress(@browser)
    		expect(@browser.url).to eql(CASUALDRESS_URL)
    	end

    	it 'Opening dropdown menu Dresses and choosing Evening Dressses' do 
    		FilterObjects.openDressDrop(@browser)
    		sleep 1
    		FilterObjects.openEveningDress(@browser)
    		expect(@browser.url).to eql(EVENINGDRESS_URL)
    	end

    	it 'Opening dropdown menu Dresses and choosing Summer Dresses' do 
    		FilterObjects.openDressDrop(@browser)
    		sleep 1
    		FilterObjects.openSummerDress(@browser)
    		expect(@browser.url).to eql(SUMMERDRESS_URL)
    	end

    end

end