class WordGuess
	attr_reader :word, :guesses, :game_over, :letters, :secert_word 
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

	def wrong_letter(letter)
		letters << letter
		letters
	end

	def hide_word
		@secert_word = guessing_word.tr(word, "-")
  		@secert_word 
	end

	def show_letter(letter)
		if word.include?(letter)
			hidden_index = word.index(letter)
			@secert_word[hidden_index]=letter
			unhidden_letter = secert_word
		end
		if word.include?(letter.upcase)
			hidden_index = word.index(letter.upcase)
			@secert_word[hidden_index]=letter.upcase
			unhidden_letter = secert_word
		end
		unhidden_letter = secert_word
	end
end


# --Repeated guesses do not count against the user
# a way to check if a letter has been guessed
# 		if so the number of guesses stays the same
# 		if not the number of guesses goes down by 1


# --Guesses are limited and the number of guesses available is related to the length of the word.
# A way to count how many guesses the player has


#---------place holder to know what pseudocode I am working on----------
# a way to 
# 	if player two letter is in the sercert word
# 		player two see his letter inplace of the symbol
# 	Otherwise, player two sees the word in symbol form

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





