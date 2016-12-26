class WordGuess
	attr_reader :word, :guesses, :game_over, :letters, :secret_word, :unhidden_letter
	attr_writer :secret_word
# Computer program - Characteristics - Attributes
	def initialize(word)
		@word = word
		@guesses = word.length
		@game_over = false
		@letters = []
	end
# Behavior - methods
	def guessing_word
		word
	end

	def guess_limit
		guesses 
	end

	def guesses_left
		@guesses -= 1
		guesses
	end

	def wrong_letter(letter)
		letters << letter
		letters

	end

	def hide_word
		@secret_word = guessing_word.tr(guessing_word, "-")
  		secret_word 
	end

	def show_letter(letter)
		for i in 0..guessing_word.length-1
			if guessing_word[i] == letter
			     secret_word[i] = letter
			     secret_word
			end
			if guessing_word[i] == letter.upcase
			     secret_word[i] = letter.upcase
			     secret_word
			end 
		end 
	@unhidden_letter = secret_word
	end

	def is_over?
		if guesses_left <= 0
			@game_over = true
			
		elsif unhidden_letter == guessing_word
			@game_over = true
			
		else
			@game_over
		end
		@game_over			
	end


end


#---------place holder to know what pseudocode I am working on----------
# --Repeated guesses do not count against the user
# a way to check if a letter has been guessed
# 		if so the number of guesses stays the same
# 		if not the number of guesses goes down by 1

# A way to tell when he game is over

# #user interface
# Game intro:
puts "Welcome to the 'Guess the Word' game. A two player guessing game."
puts "Player will enter a word to be guessed"
puts "The second player will guess the word "
puts "The rules are as follow:"
puts "Player two guesses the word one letter at a time"
puts "Your guesses are limited to length of the word. So if the word is 'dog' you have three guesses"
puts "A repeated guess will not count towards your guess limit"
puts "Okay, LET'S PLAY!"

# One user can enter a word 
puts "Player 1 enter a word"
		word = gets.chomp #(sercet word)
	wordguess = WordGuess.new(word)

	p wordguess
# another user attempts to guess the word by guessing letters one at a time
puts "Player 2 your word is: '#{wordguess.hide_word}'"
puts "Your letter guess is: "
	guessing_letter = gets.chomp
puts wordguess.show_letter(guessing_letter)
# 	if the letter guess is in the word
# 		then show the word with the letter in placel : "---c---"
# 	if the letter guess is not in the word
# 		then show the word in sercet
# 		player 2 guess limit goes down by one
# Player 2 can keep guessing until 
# 	the word is completed

# puts wordguess.is_over?
# The user should get a congratulatory message if they win 
# "CONGRADULATIONS YOU WIN!!!!!!"	
# 	or
# 	player 2 uses all their guesses
# and a taunting message if they lose.
# "Better luck next time"





