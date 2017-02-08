require_relative 'wordgame'

describe WordGame do
	let(:wordgame) {WordGame.new}

	it "new wordgames have a game_state of :startup" do
		expect(wordgame.game_state).to eq :startup 
	end
end