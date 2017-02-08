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
		
		if @progress == @secret_word
			@game_state = :win
		elsif @guesses_left < 1
			@game_state = :loss
		end

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

	def keep_playing?
		@game_state != :win && @game_state != :loss
	end

	def message
		case @game_state 
		when :loss
			return "You lose. Too bad you suck at this game"
		when :win
			return "Congratulations, you win!"
		when :playing
			return "The game is afoot. Guess a letter"
		else
			return "Create a new game to play."
		end
	end

end