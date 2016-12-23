require_relative 'wordguess'
	describe WordGuess do
		let(:word) { WordGuess.new("unicorn") }

	it "stores the word given on initialization" do 
		expect(wordguess.get_word).to eq "unicorn"
	end
end
