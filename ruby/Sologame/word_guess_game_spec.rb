require_relative 'word_guess_game'

describe WordGuess do
	let(:wordguess) { WordGuess.new("unicorn")}

	it "stores the word given on initialization" do 
		expect(wordguess.guessing_word).to eq "unicorn"
	end

	it "guess limited" do
		expect(wordguess.guess_limit).to eq 7
	end

	it "when game starts" do
		expect(wordguess.game_over).to eq false 
	end

	it "stores letters" do
		expect(wordguess.wrong_letter("w")).to eq ["w"]
	end

	it "word to dashes" do 
		expect(wordguess.hide_word).to eq "-------"
	end

	it "replace dash with letter" do 
		wordguess.hide_word
		expect(wordguess.show_letter("n")).to eq "-n----n"
	end

	it "guesses down by 1" do 
		expect(wordguess.guesses_left).to eq 6
	end

	 it "is game over" do
	 	expect(wordguess.is_over?).to eq false
	 end

	 it "is game over" do
	 	for i in 0..wordguess.guesses-1
	 	wordguess.guesses_left
	 	end
	 	expect(wordguess.is_over?).to eq true
	 end

	 it "is game over" do
	 	p wordguess.guessing_word
	 	p wordguess.hide_word
	 	p wordguess.show_letter("u")
	 	p wordguess.show_letter("n")
	 	p wordguess.show_letter("i")
	 	p wordguess.unhidden_letter == "unicorn"
	 	p wordguess.show_letter("o")
	 	p wordguess.show_letter("c")
	 	p wordguess.show_letter("r")
	 	p wordguess.unhidden_letter
	 	p wordguess.unhidden_letter == "unicorn"
	 	expect(wordguess.is_over?).to eq true
	 end
end
