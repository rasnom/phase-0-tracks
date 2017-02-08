require_relative 'wordgame'

describe WordGame do
	let(:wordgame) {WordGame.new}

	it "new wordgame objects have a game_state of :startup" do
		expect(wordgame.game_state).to eq :startup 
	end

	it "starts a new game round" do
		expect(wordgame.new_round("unimportant")).to eq :playing
	end

	it "new rounds set guesses left to secret word length plus 4" do
		wordgame.new_round("party")
		expect(wordgame.guesses_left).to eq 9
	end

	it "new rounds set progress to string of underscores" do
		wordgame.new_round("something")
		expect(wordgame.progress).to eq "_________"
	end

	it "guess? returns true if it is in the word" do
		wordgame.new_round("fetch")
		expect(wordgame.guess?("t")).to eq true
	end

	it "ignores case in guesses" do
		wordgame.new_round("TEST")
		expect(wordgame.guess?("t")).to eq true
	end

	it "guessing a new letter decreases the guesses left" do
		wordgame.new_round("party")
		wordgame.guess?("a")
		wordgame.guess?("b")
		wordgame.guess?("c")
		wordgame.guess?("c")
		wordgame.guess?("C")
		wordgame.guess?("C")
		expect(wordgame.guesses_left).to eq 6
	end

	it "progress is updated with correctly guessed letters" do
		wordgame.new_round("Populate")
		wordgame.guess?("p")
		wordgame.guess?("a")
		wordgame.guess?("z")
		expect(wordgame.progress).to eq "P_P__A__"
	end
	
end