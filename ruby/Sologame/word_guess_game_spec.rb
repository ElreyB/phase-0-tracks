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

	it "stores letters" do
		expect(word.wrong_letter("w")).to eq ["w"]
	end

	it "word to dashes" do 
		expect(word.hide_word).to eq "-------"
	end

	it "replace dash with letter" do 
		word.hide_word
		expect(word.show_letter("n")).to eq "-n----n"
	end

	it "guesses down by 1" do 
		expect(word.guesses_left).to eq 6
	end

	 it "is game over" do
	 	expect(word.is_over?).to eq false
	 end

	 it "is game over" do
	 	guesses = 0
	 	expect(word.is_over?).to eq true
	 end
end
