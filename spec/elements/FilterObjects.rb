class FilterObjects

	def self.startPage(driver)
		driver.a(title: "Women").click
	end

	#COMPARISON OF PRESENTED PRODUCTS AND NUMBER OF PRODUCT MENTIONED IN FILTERS SIDEBAR

	def self.compare(driver)
		str=driver.span(class: "heading-counter").text
        str.each_char{ |c| str.delete!(c) if c.ord<48 or c.ord>57 }
        
	end

	#SIDEBAR CATEGORIES AND DROPDOWN MENU

	def self.number(driver)
		driver.a(span: value).parseInt
	end

	def self.topsButton(driver)
		driver.a(visible_text: "Tops").click
	end

	def self.openTshirts(driver)
		driver.a(visible_text: "T-shirts").click
	end

	def self.openBlouses(driver)
		driver.a(visible_text: "Blouses").click
	end

	def self.dressesButton(driver)
		driver.a(visible_text: "Dresses").click 
	end

	def self.openCasualDress(driver)
		driver.a(visible_text: "Casual Dresses").click
	end

	def self.openEveningDress(driver)
		driver.a(visible_text: "Evening Dresses").click
	end

	def self.openSummerDress(driver)
		driver.a(visible_text: "Summer Dresses").click
	end

	def self.openTopsDrop(driver)
		driver.span(class: "grower CLOSE").click
	end

	def self.openDressDrop(driver)
		driver.span(class: "grower CLOSE").click
		sleep 0.1
		driver.span(class: "grower CLOSE").click
	end

	def self.closeDressMenus(driver)
		driver.span(class: "grower OPEN").click
	end

	#CATEGORIES

	def self.topsBox(driver)
		driver.input(id: "layered_category_4").click
	end

	def self.dressesBox(driver)
		driver.input(id: "layered_category_8").click
	end

	#SIZE

	def self.sizeS(driver)
		driver.input(name: "layered_id_attribute_group_1").click 
	end

	def self.sizeM(driver)
		driver.input(name: "layered_id_attribute_group_2").click 
	end

	def self.sizeL(driver)
		driver.input(name: "layered_id_attribute_group_3").click 
	end

	#COLOR

	def self.colorBeige(driver)
		driver.input(id: "layered_id_attribute_group_7").click 
	end

	def self.colorWhite(driver)
		driver.input(id: "layered_id_attribute_group_8").click 
	end

	def self.colorBlack(driver)
		driver.input(id: "layered_id_attribute_group_11").click 
	end

	def self.colorOrange(driver)
		driver.input(id: "layered_id_attribute_group_13").click 
	end

	def self.colorBlue(driver)
		driver.input(id: "layered_id_attribute_group_14").click 
	end

	def self.colorGreen(driver)
		driver.input(id: "layered_id_attribute_group_15").click 
	end

	def self.colorYellow(driver)
		driver.input(id: "layered_id_attribute_group_16").click 
	end

	def self.colorPink(driver)
		driver.input(id: "layered_id_attribute_group_24").click 
	end

	#COMPOSITIONS

	def self.compCotton(driver)
		driver.input(id: "layered_id_feature_5").click 
	end

	def self.compPolyester(driver)
		driver.input(id: "layered_id_feature_1").click 
	end

	def self.compViscose(driver)
		driver.input(id: "layered_id_feature_3").click 
	end

	#STYLES

	def self.styleCasual(driver)
		driver.input(id: "layered_id_feature_11").click 
	end

	def self.styleDressy(driver)
		driver.input(id: "layered_id_feature_16").click
	end

	def self.styleGirly(driver)
		driver.input(id: "layered_id_feature_13").click
	end

	#PROPPERTIES

	def self.colorfulDress(driver)
		driver.input(id: "layered_id_feature_18").click
	end

	def self.maxiDress(driver)
		driver.input(id: "layered_id_feature_21").click
	end

	def self.midiDress(driver)
		driver.input(id: "layered_id_feature_20").click
	end

	def self.shortDress(driver)
		driver.input(id: "layered_id_feature_19").click
	end

	def self.shortSleeve(driver)
		driver.input(id: "layered_id_feature_17").click
	end

	#AVAILABILITY

	def self.inStock(driver)
		driver.input(id: "layered_quantity_1").click
	end

	#MANUFACTURER

	def self.fashionManufacturer(driver)
		driver.input(id: "layered_manufacturer_1").click
	end

	#CONDITION

	def self.condition(driver)
		driver.input(id: "layered_condition_new").click
	end
	
end
