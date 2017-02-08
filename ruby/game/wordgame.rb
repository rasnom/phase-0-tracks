class WordGame
	attr_reader :game_state, :guesses_left, :progress

	def initialize
		@game_state = :startup
	end

	def new_round (secret_word)
		@guesses_left = secret_word.length + 4
		@progress = String.new
		secret_word.length.times {progress << "_"}		
		@game_state = :playing
	end



end