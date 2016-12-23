require_relative 'word_guess_game'

describe WordGuess do
	let(:word) { WordGuess.new("unicorn")}

	it "stores the word given on initialization" do 
		expect(word.guessing_word).to eq "unicorn"
	end

	it "guess limited" do
		expect(word.guess_limit).to eq 7
	end

	it "when game starts" do
		expect(word.game_over).to eq false 
	end
end
