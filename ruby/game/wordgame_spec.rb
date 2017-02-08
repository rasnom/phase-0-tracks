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
end