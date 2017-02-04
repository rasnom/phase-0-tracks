class Santa
	attr_reader :ethnicity
	attr_accessor :age, :gender

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

end

# s = Santa.new("demi","lizardperson")
# s.speak
# s.eat_milk_and_cookies("brownie")


# santas = []
# some_genders = ["forward", "backward", "innie", "outie", "pleaser", "cat"]
# some_ethnicities = ["new englander", "beige", "mutt", "roma", "aristocracy"]
# 6.times {santas << Santa.new(some_genders.sample, some_ethnicities.sample)}
# santas.each {|santa| santa.about}


# leo = Santa.new("hearty","Newfoundlander")
# p leo
# 9.times {leo.celebrate_birthday}
# puts "age : #{leo.age}"
# puts "ethnicity : #{leo.ethnicity}"
# leo.gender = "thruster"
# leo.get_mad_at("Comet")
# p leo


some_genders = ["forward", "backward", "innie", "outie", "pleaser", "cat",
								"agender", "female", "bigender", "male", "female", 
								"gender fluid", "N/A"]
some_ethnicities = ["new englander", "beige", "mutt", "roma", "aristocracy",
										"black", "Latino", "white", "Japanese-African", 
										"prefer not to say", "Mystical Creature (unicorn)", "N/A"]

114.times do
	this_santa = Santa.new(some_genders.sample, some_ethnicities.sample)
	this_santa.age = rand(141)
	puts "age : #{this_santa.age}"
	puts "gender : #{this_santa.gender}"
	puts "ethnicity : #{this_santa.ethnicity}"
	puts "\n"
end