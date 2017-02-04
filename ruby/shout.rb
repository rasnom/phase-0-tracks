module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yell_happily(words)
		"w00t! " + words
	end
end

puts Shout.yell_angrily("what is this nonsense?")

puts Shout.yell_happily("oh, ok.")