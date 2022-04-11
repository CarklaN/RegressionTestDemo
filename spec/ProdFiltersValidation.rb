
require 'rspec'
require 'watir'
require 'elements/FilterObjects'

#VALUES BY FILTER placed in the sidebar

TOPS = 2          #number of TOPS
DRESSES = 5       #number of DRESSES
S = 7             #number of products with size s
M = 7             #number  of products with size m
L = 7             #number of products with size l
BEIGE = 1         #number of products with color specified in variable name
BLACK = 2         #number of products with color specified in variable name
WHITE = 2         #number of products with color specified in variable name
ORANGE = 3        #number of products with color specified in variable name
BLUE = 2          #number of products with color specified in variable name
GREEN = 1         #number of products with color specified in variable name
YELLOW = 3        #number of products with color specified in variable name
PINK = 1          #number of products with color specified in variable name
COTTON = 3        #products with specific material
POLYESTER = 2     #products with specific material
VISCOSE = 2       #products with specific material
CASUAL = 3        #specific style
DRESSY = 1        #specific style
GIRLY = 3         #specific style
COLORFULDR = 1    #properties
MAXIDR = 1        #properties
MIDIDR = 1        #properties  
SHORTDR = 2       #properties
SHORTSL = 2       #properties
STOCK = 7         #availability in stock
MANUFACTURER = 7  #manufacturer
COND = 7          #new products

describe 'REGRESSION: Validation of sidebar filters:' do

    before :all do
        @browser = Watir::Browser.new:chrome
        @browser.window.maximize
        @browser.goto('http://automationpractice.com/index.php?id_category=3&controller=category')
        sleep 5
    end

    after :all do
        @browser.close
    end

    context 'Validation of size and categories' do          

        it 'check TOPS' do 
            FilterObjects.topsBox(@browser)
            sleep 2
            expect((FilterObjects.compare(@browser)).to_i).to be(TOPS)
            FilterObjects.startPage(@browser)
            sleep 2
        end

        it 'Check Dresses' do 
            FilterObjects.dressesBox(@browser)
            sleep 2
            expect((FilterObjects.compare(@browser)).to_i).to be(DRESSES)
            FilterObjects.startPage(@browser)
            sleep 2
        end 

        it 'Check size S' do
            FilterObjects.sizeS(@browser)
            sleep 2
            expect((FilterObjects.compare(@browser)).to_i).to be(S)
            FilterObjects.startPage(@browser)
            sleep 2
        end 

        it 'Check size M' do 
            FilterObjects.sizeM(@browser)
            sleep 2
            expect((FilterObjects.compare(@browser)).to_i).to be(M)
            FilterObjects.startPage(@browser)
            sleep 2
        end 

        it 'Check size L' do 
            FilterObjects.sizeL(@browser)
            sleep 2
            expect((FilterObjects.compare(@browser)).to_i).to be(L)
            FilterObjects.startPage(@browser)
            sleep 2
        end 
    end

        context 'Validation of color filter options' do

        it 'Check color Beige' do 
            FilterObjects.colorBeige(@browser)
            sleep 2
            expect((FilterObjects.compare(@browser)).to_i).to be(BEIGE)
            FilterObjects.startPage(@browser)
            sleep 2
        end 

        it 'Check color White' do 
            FilterObjects.colorWhite(@browser)
            sleep 2
            expect((FilterObjects.compare(@browser)).to_i).to be(WHITE)
            FilterObjects.startPage(@browser)
            sleep 2
        end 

        it 'Check color Black' do
            FilterObjects.colorBlack(@browser)
            sleep 2
            expect((FilterObjects.compare(@browser)).to_i).to be(BLACK)
            FilterObjects.startPage(@browser)
            sleep 2
        end 

        it 'Check color Orange' do 
            FilterObjects.colorOrange(@browser)
            sleep 2
            expect((FilterObjects.compare(@browser)).to_i).to be(ORANGE)
            FilterObjects.startPage(@browser)
            sleep 2
        end 

        it 'Check color Blue' do 
            FilterObjects.colorBlue(@browser)
            sleep 2
            expect((FilterObjects.compare(@browser)).to_i).to be(BLUE)
            FilterObjects.startPage(@browser)
            sleep 2
        end 

        it 'Check color Green' do 
            FilterObjects.colorGreen(@browser)
            sleep 2
            expect((FilterObjects.compare(@browser)).to_i).to be(GREEN)
            FilterObjects.startPage(@browser)
            sleep 2
        end 

        it 'Check color Yellow' do 
            FilterObjects.colorYellow(@browser)
            sleep 2
            expect((FilterObjects.compare(@browser)).to_i).to be(YELLOW)
            sleep 2
            FilterObjects.startPage(@browser)
            sleep 2
        end 

        it 'Check color Pink' do 
            FilterObjects.colorPink(@browser)
            sleep 2
            expect((FilterObjects.compare(@browser)).to_i).to be(PINK)
            sleep 2
            FilterObjects.startPage(@browser)
            sleep 2
        end 

    end

    context 'Validation of composition' do

        it 'Check composition: Cotton' do 
            FilterObjects.compCotton(@browser)
            sleep 2
            expect((FilterObjects.compare(@browser)).to_i).to be(COTTON)
            FilterObjects.startPage(@browser)
            sleep 2
        end 

        it 'Check composition: Polyester' do 
            FilterObjects.compPolyester(@browser)
            sleep 2
            expect((FilterObjects.compare(@browser)).to_i).to be(POLYESTER)
            FilterObjects.startPage(@browser)
            sleep 2
        end 

        it 'Check composition: Viscose' do
            FilterObjects.compViscose(@browser)
            sleep 2 
            expect((FilterObjects.compare(@browser)).to_i).to be(VISCOSE)
            FilterObjects.startPage(@browser)
            sleep 3
        end 

    end

    context 'Validation of styles' do    

        it 'Check Styles: Casual' do 
            FilterObjects.styleCasual(@browser)
            sleep 2
            expect((FilterObjects.compare(@browser)).to_i).to be(CASUAL)
            FilterObjects.startPage(@browser)
        end 

        it 'Check Styles: Dressy' do 
            FilterObjects.styleDressy(@browser)
            sleep 5
            expect((FilterObjects.compare(@browser)).to_i).to be(DRESSY)
            FilterObjects.startPage(@browser)
        end

        it 'Check Styles: Girly' do 
            FilterObjects.styleGirly(@browser)
            sleep 2
            expect((FilterObjects.compare(@browser)).to_i).to be(GIRLY)
            FilterObjects.startPage(@browser)
            sleep 2
        end 

    end

    context 'Validation of properties and availability' do 

        it 'Check properties: Colorful Dress' do 
            FilterObjects.startPage(@browser)
            sleep 4
            FilterObjects.colorfulDress(@browser)
            sleep 2
            expect((FilterObjects.compare(@browser)).to_i).to be(COLORFULDR)
            FilterObjects.startPage(@browser)
            sleep 2
        end 

        it 'Check properties: Maxi Dress' do 
            FilterObjects.maxiDress(@browser)
            sleep 2
            expect((FilterObjects.compare(@browser)).to_i).to be(MAXIDR)
            FilterObjects.startPage(@browser)
            sleep 2
        end 

        it 'Check properties: Midi Dress' do 
            FilterObjects.midiDress(@browser)
            sleep 2
            expect((FilterObjects.compare(@browser)).to_i).to be(MIDIDR)
            FilterObjects.startPage(@browser)
            sleep 2
        end 

        it 'Check properties: Short Dress' do 
            FilterObjects.shortDress(@browser)
            sleep 2
            expect((FilterObjects.compare(@browser)).to_i).to be(SHORTDR)
            FilterObjects.startPage(@browser)
        end 

        it 'Check properties: Short Sleeve' do 
            FilterObjects.shortSleeve(@browser)
            sleep 2
            expect((FilterObjects.compare(@browser)).to_i).to be(SHORTDR)
            FilterObjects.startPage(@browser)
            sleep 2
        end 

        it 'Check Availability: In stock' do 
            FilterObjects.inStock(@browser)
            sleep 2
            expect((FilterObjects.compare(@browser)).to_i).to be(STOCK)
            FilterObjects.startPage(@browser)
            sleep 2
        end 

    end

    context 'Validation of manufacturer and condition' do 

        it 'Check manufacturer: Fashion Manufacturer' do 
            FilterObjects.startPage(@browser)
            sleep 4
            FilterObjects.fashionManufacturer(@browser)
            sleep 2
            expect((FilterObjects.compare(@browser)).to_i).to be(MANUFACTURER)
            FilterObjects.startPage(@browser)
            sleep 2
        end 

        it 'Check Condition: New' do 
            FilterObjects.startPage(@browser)
            sleep 4
            FilterObjects.condition(@browser)
            sleep 2
            expect((FilterObjects.compare(@browser)).to_i).to be(COND)
            FilterObjects.startPage(@browser)
            sleep 2
        end

    end 

end
