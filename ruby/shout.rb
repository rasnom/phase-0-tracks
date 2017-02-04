# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yell_happily(words)
# 		"w00t! " + words
# 	end
# end

# puts Shout.yell_angrily("what is this nonsense?")

# puts Shout.yell_happily("oh, ok.")

module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yell_happily(words)
		"w00t! " + words
	end
end

class Kitten
	include Shout

	def initialize
		puts yell_angrily("pay attention to me")
	end
end

class Coworker
	include Shout
end	

fuzz_demon = Kitten.new
puts fuzz_demon.yell_happily("I love wet food")

clyde = Coworker.new
puts clyde.yell_angrily("Are both elevators broken again?")

