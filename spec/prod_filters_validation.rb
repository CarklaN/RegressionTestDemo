require 'rspec'
require 'watir'
require 'helper'
require 'page_elements/filter_objects'

#Number of products specified by filters placed in the sidebar

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

describe 'Validation of sidebar filters, comparing actual number of displayed products vs expected number' do

    let(:actions) {@main.filters}

    context 'Validation of size and categories' do          

        it 'Click on women button' do 
            actions.start_page
        end

        it 'check TOPS' do 
            actions.tops_box
            sleep 2
            expect((actions.compare).to_i).to be(TOPS)
            actions.start_page
            sleep 2
        end

        it 'Check Dresses' do 
            actions.dresses_box
            sleep 2
            expect((actions.compare).to_i).to be(DRESSES)
            actions.start_page
            sleep 2
        end 

        it 'Check size S' do
            actions.size_s
            sleep 2
            expect((actions.compare).to_i).to be(S)
            actions.start_page
            sleep 2
        end 

        it 'Check size M' do 
            actions.size_m
            sleep 2
            expect((actions.compare).to_i).to be(M)
            actions.start_page
            sleep 2
        end 

        it 'Check size L' do 
            actions.size_l
            sleep 2
            expect((actions.compare).to_i).to be(L)
            actions.start_page
            sleep 2
        end 
    end

        context 'Validation of color filter options' do

        it 'Check color Beige' do 
            actions.color_beige
            sleep 2
            expect((actions.compare).to_i).to be(BEIGE)
            actions.start_page
            sleep 2
        end 

        it 'Check color White' do 
            actions.color_white
            sleep 2
            expect((actions.compare).to_i).to be(WHITE)
            actions.start_page
            sleep 2
        end 

        it 'Check color Black' do
            actions.color_black
            sleep 2
            expect((actions.compare).to_i).to be(BLACK)
            actions.start_page
            sleep 2
        end 

        it 'Check color Orange' do 
            actions.color_orange
            sleep 2
            expect((actions.compare).to_i).to be(ORANGE)
            actions.start_page
            sleep 2
        end 

        it 'Check color Blue' do 
            actions.color_blue
            sleep 2
            expect((actions.compare).to_i).to be(BLUE)
            actions.start_page
            sleep 2
        end 

        it 'Check color Green' do 
            actions.color_green
            sleep 2
            expect((actions.compare).to_i).to be(GREEN)
            actions.start_page
            sleep 2
        end 

        it 'Check color Yellow' do 
            actions.color_yellow
            sleep 2
            expect((actions.compare).to_i).to be(YELLOW)
            sleep 2
            actions.start_page
            sleep 2
        end 

        it 'Check color Pink' do 
            actions.color_pink
            sleep 2
            expect((actions.compare).to_i).to be(PINK)
            sleep 2
            actions.start_page
            sleep 2
        end 

    end

    context 'Validation of composition' do

        it 'Check composition: Cotton' do 
            actions.comp_cotton
            sleep 2
            expect((actions.compare).to_i).to be(COTTON)
            actions.start_page
            sleep 2
        end 

        it 'Check composition: Polyester' do 
            actions.comp_polyester
            sleep 2
            expect((actions.compare).to_i).to be(POLYESTER)
            actions.start_page
            sleep 2
        end 

        it 'Check composition: Viscose' do
            actions.comp_viscose
            sleep 2 
            expect((actions.compare).to_i).to be(VISCOSE)
            actions.start_page
            sleep 3
        end 

    end

    context 'Validation of styles' do    

        it 'Check Styles: Casual' do 
            actions.style_casual
            sleep 2
            expect((actions.compare).to_i).to be(CASUAL)
            actions.start_page
        end 

        it 'Check Styles: Dressy' do 
            actions.style_dressy
            sleep 5
            expect((actions.compare).to_i).to be(DRESSY)
            actions.start_page
        end

        it 'Check Styles: Girly' do 
            actions.style_girly
            sleep 2
            expect((actions.compare).to_i).to be(GIRLY)
            actions.start_page
            sleep 2
        end 

    end

    context 'Validation of properties and availability' do 

        it 'Check properties: Colorful Dress' do 
            actions.start_page
            sleep 4
            actions.colorful_dress
            sleep 2
            expect((actions.compare).to_i).to be(COLORFULDR)
            actions.start_page
            sleep 2
        end 

        it 'Check properties: Maxi Dress' do 
            actions.maxi_dress
            sleep 2
            expect((actions.compare).to_i).to be(MAXIDR)
            actions.start_page
            sleep 2
        end 

        it 'Check properties: Midi Dress' do 
            actions.midi_dress
            sleep 2
            expect((actions.compare).to_i).to be(MIDIDR)
            actions.start_page
            sleep 2
        end 

        it 'Check properties: Short Dress' do 
            actions.short_dress
            sleep 2
            expect((actions.compare).to_i).to be(SHORTDR)
            actions.start_page
        end 

        it 'Check properties: Short Sleeve' do 
            actions.short_sleeve
            sleep 2
            expect((actions.compare).to_i).to be(SHORTDR)
            actions.start_page
            sleep 2
        end 

        it 'Check Availability: In stock' do 
            actions.in_stock
            sleep 2
            expect((actions.compare).to_i).to be(STOCK)
            actions.start_page
            sleep 2
        end 

    end

    context 'Validation of manufacturer and condition' do 

        it 'Check manufacturer: Fashion Manufacturer' do 
            actions.start_page
            sleep 4
            actions.fashion_manufacturer
            sleep 2
            expect((actions.compare).to_i).to be(MANUFACTURER)
            actions.start_page
            sleep 2
        end 

        it 'Check Condition: New' do 
            actions.start_page
            sleep 4
            actions.condition
            sleep 2
            expect((actions.compare).to_i).to be(COND)
            actions.start_page
            sleep 2
        end

    end 

end
