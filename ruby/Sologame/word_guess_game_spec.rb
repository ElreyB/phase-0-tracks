require_relative 'word_guess_game'

describe WordGuess do
	let(:word) { WordGuess.new("unicorn")}

	it "stores the word given on initialization" do 
		expect(word.guessing_word).to eq "unicorn"
	end

	
end
