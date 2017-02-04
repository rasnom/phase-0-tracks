class Santa

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", 
												"Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def about
		puts "a #{@gender} #{@ethnicity} santa"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking << reindeer
	end

	def gender=(label)
		@gender = label
	end

	def age
		@age
	end

	def ethnicity
		@ethnicity
	end




end

# s = Santa.new("demi","lizardperson")
# s.speak
# s.eat_milk_and_cookies("brownie")


# santas = []
# some_genders = ["forward", "backward", "innie", "outie", "pleaser", "cat"]
# some_ethnicities = ["new englander", "beige", "mutt", "roma", "aristocracy"]
# 6.times {santas << Santa.new(some_genders.sample, some_ethnicities.sample)}
# santas.each {|santa| santa.about}


leo = Santa.new("hearty","Newfoundlander")
p leo
9.times {leo.celebrate_birthday}
puts "age : #{leo.age}"
puts "ethnicity : #{leo.ethnicity}"
leo.gender = "thruster"
leo.get_mad_at("Comet")
p leo
