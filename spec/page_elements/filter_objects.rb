require 'helper'
require 'page_elements/page_container'

class FilterObjects < HomePage

#Elements and methods on list of products page, dropdown menu in the sidebar and filters in the sidebar

	def start_page
		@browser.a(title: "Women").click
	end

	#COMPARISON OF PRESENTED PRODUCTS AND NUMBER OF PRODUCT MENTIONED IN FILTERS SIDEBAR

	def compare
		str=@browser.span(class: "heading-counter").text
        str.each_char{ |c| str.delete!(c) if c.ord<48 or c.ord>57 }
        
	end

	#SIDEBAR CATEGORIES AND DROPDOWN MENU

	def number
		@browser.a(span: value).parseInt
	end

	def tops_button
		@browser.a(visible_text: "Tops").click
	end

	def open_tshirts
		@browser.a(visible_text: "T-shirts").click
	end

	def open_blouses
		@browser.a(visible_text: "Blouses").click
	end

	def dresses_button
		@browser.a(visible_text: "Dresses").click 
	end

	def open_casual_dress
		@browser.a(visible_text: "Casual Dresses").click
	end

	def open_evening_dress
		@browser.a(visible_text: "Evening Dresses").click
	end

	def open_summer_dress
		@browser.a(visible_text: "Summer Dresses").click
	end

	def open_tops_drop
		@browser.span(class: "grower CLOSE").click
	end

	def open_dress_drop
		@browser.span(class: "grower CLOSE").click
		sleep 0.1
		@browser.span(class: "grower CLOSE").click
	end

	def close_dress_menus
		@browser.span(class: "grower OPEN").click
	end

	#CATEGORIES

	def tops_box
		@browser.input(id: "layered_category_4").click
	end

	def dresses_box
		@browser.input(id: "layered_category_8").click
	end

	#SIZE

	def size_s
		@browser.input(name: "layered_id_attribute_group_1").click 
	end

	def size_m
		@browser.input(name: "layered_id_attribute_group_2").click 
	end

	def size_l
		@browser.input(name: "layered_id_attribute_group_3").click 
	end

	#COLOR

	def color_beige
		@browser.input(id: "layered_id_attribute_group_7").click 
	end

	def color_white
		@browser.input(id: "layered_id_attribute_group_8").click 
	end

	def color_black
		@browser.input(id: "layered_id_attribute_group_11").click 
	end

	def color_orange
		@browser.input(id: "layered_id_attribute_group_13").click 
	end

	def color_blue
		@browser.input(id: "layered_id_attribute_group_14").click 
	end

	def color_green
		@browser.input(id: "layered_id_attribute_group_15").click 
	end

	def color_yellow
		@browser.input(id: "layered_id_attribute_group_16").click 
	end

	def color_pink
		@browser.input(id: "layered_id_attribute_group_24").click 
	end

	#COMPOSITIONS

	def comp_cotton
		@browser.input(id: "layered_id_feature_5").click 
	end

	def comp_polyester
		@browser.input(id: "layered_id_feature_1").click 
	end

	def comp_viscose
		@browser.input(id: "layered_id_feature_3").click 
	end

	#STYLES

	def style_casual
		@browser.input(id: "layered_id_feature_11").click 
	end

	def style_dressy
		@browser.input(id: "layered_id_feature_16").click
	end

	def style_girly
		@browser.input(id: "layered_id_feature_13").click
	end

	#PROPPERTIES

	def colorful_dress
		@browser.input(id: "layered_id_feature_18").click
	end

	def maxi_dress
		@browser.input(id: "layered_id_feature_21").click
	end

	def midi_dress
		@browser.input(id: "layered_id_feature_20").click
	end

	def short_dress
		@browser.input(id: "layered_id_feature_19").click
	end

	def short_sleeve
		@browser.input(id: "layered_id_feature_17").click
	end

	#AVAILABILITY

	def in_stock
		@browser.input(id: "layered_quantity_1").click
	end

	#MANUFACTURER

	def fashion_manufacturer
		@browser.input(id: "layered_manufacturer_1").click
	end

	#CONDITION

	def condition
		@browser.input(id: "layered_condition_new").click
	end
	
end
