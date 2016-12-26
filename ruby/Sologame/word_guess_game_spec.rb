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
	 	for i in 0..word.guesses-1
	 	word.guesses_left
	 	end
	 	expect(word.is_over?).to eq true
	 end

	 it "is game over" do
	 	p word.guessing_word
	 	p word.hide_word
	 	p word.show_letter("u")
	 	p word.show_letter("n")
	 	p word.show_letter("i")
	 	p word.unhidden_letter == "unicorn"
	 	p word.show_letter("o")
	 	p word.show_letter("c")
	 	p word.show_letter("r")
	 	p word.unhidden_letter
	 	p word.unhidden_letter == "unicorn"
	 	expect(word.is_over?).to eq true
	 end
end
