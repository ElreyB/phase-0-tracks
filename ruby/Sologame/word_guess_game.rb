class WordGuess
	attr_reader :word, :guesses, :game_over, :letters, :secret_word
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

	def guesses?
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
	unhidden_letter = secret_word
	end
end



# --Repeated guesses do not count against the user
# a way to check if a letter has been guessed
# 		if so the number of guesses stays the same
# 		if not the number of guesses goes down by 1

#---------place holder to know what pseudocode I am working on----------
# --Guesses are limited and the number of guesses available is related to the length of the word.
# A way to count how many guesses the player has





# Method:
# input:
# steps:
# output:

# #user interface
# Game intro:
# "Welcome to the 'Guess the Word' game. A two player guessing game"
# "One player will enter a word to be guessed"
# "the second player will guess the word "
# "the rules are as follow:"
# "Player two guesses the word one letter at a time"
# "Your guesses are limited to length of the word. So if the word is 'dog' you have three guess"
# "A repeated guess will not count towards your guess limit"
# "ok let play!"

# One user can enter a word 
# "Player one enter a word" (sercet word)

# another user attempts to guess the word by guessing letters one at a time
# "your word is '-------'"
# "Your letter guess is: "
# 	if the letter guess is in the word
# 		then show the word with the letter in placel : "---c---"
# 	if the letter guess is not in the word
# 		then show the word in sercet
# 		player 2 guess limit goes down by one
# Player 2 can keep guessing until 
# 	the word is completed
# The user should get a congratulatory message if they win 
# "CONGRADULATIONS YOU WIN!!!!!!"	
# 	or
# 	player 2 uses all their guesses
# and a taunting message if they lose.
# "Better luck next time"





