class WordGame
	attr_reader :game_state, :guesses_left, :progress

	def initialize
		@game_state = :startup
	end

	def new_round (secret_word)
		@secret_word = secret_word.upcase
		@guesses_left = secret_word.length + 4
		@progress = String.new
		secret_word.length.times {progress << "_"}		
		@letters_guessed = []
		@game_state = :playing
	end

	def guess?(letter)
		letter = letter.upcase
		unless @letters_guessed.include?(letter) 
			@guesses_left -= 1
			@letters_guessed << letter
		end
		update_progress(letter)
		@secret_word.include?(letter)
	end

	def update_progress(letter)
		(0..@secret_word.length).each do |index|
			if @secret_word[index] == letter
				@progress[index] = letter
			end
		end	
		@progress
	end

end