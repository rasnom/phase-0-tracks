restaurant = {
 	name: "Xenios",
	menu_sections: {
		starters: {section_title: "Starters"},
		entrees: {section_title: "Entrees"},
		desserts: {section_title: "Desserts"},
		cocktails: {
			section_title: "Cocktails",
			nemesis: {
				name: "Nemesis",
				ingredients: ["Midori", "Agwa", "Housemade Sorrel Liqueur"],
				price: 12
			},
			mystery_cult: {
				name: "Mystery Cult",
				ingredients: ["Blueberry Juice", "Gin", "Yuzu"],
				price: 12
			},
			gladiator: {
				name: "Gladiator's Cup",
				ingredients: ["Mezcal", "Grapefruit Juice", "Lava Salt"],
				price: 12
			}
		}
	},
	location: {
		address: 	"1777 9th St",
		city: "Oakland",
		state: "California",
		phone: "510-555-555",
		permit_number: "2017946070087"
	}
}

puts restaurant 
puts "\n\n"

#############################################

puts "Street Address:"
puts restaurant[:name]
street_address_fields = [:address, :city, :state]
street_address_fields.each do |field_name| 
	puts restaurant[:location][field_name]
end
puts "\n\n"

##############################################

# def Hash.find_nested_sibling(key,sibling_key)
# 	self.each { |key, value| puts key}
# end

def list_ingredients(restaurant, dish)
	puts dish
	puts restaurant[:menu_sections]
end

list_ingredients(restaurant,:nemesis)
