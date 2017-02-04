class Santa

	def speak
		puts "Ho, ho, ho! Haaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def initialize
		puts "Initializing Santa instance..."
	end
	
end

s = Santa.new
s.speak
s.eat_milk_and_cookies("brownie")
