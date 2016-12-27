class WordGuess
	attr_reader :word, :guesses, :game_over, :letters, :secret_word
	attr_writer :secret_word, :guesses
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
	 secret_word
	end

	def is_over?
		if guesses <= 0
			@game_over = true
			
		elsif secret_word == guessing_word
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

	

100.times{print "Guesss Word Game "}
puts "\n"
puts "------------------"
 puts "Player 2 you have #{wordguess.guesses} guesses and your word is: '#{wordguess.hide_word}'"
 puts "Your letter guess is: "
 guessing_letter = gets.chomp
 wordguess.guesses
 wordguess.letters
 wordguess.secret_word

until wordguess.game_over == true


	if wordguess.guessing_word.include?guessing_letter
		wordguess.show_letter(guessing_letter)
	 	puts "Keep up the good work."
	 	wordguess.secret_word
	else
		if wordguess.letters.include?guessing_letter
	  	  	if wordguess.is_over? == true
	  	    	break
	  	  	end
	 		puts "Keep trying."
	 	else
		 	wordguess.wrong_letter(guessing_letter)
		 	 wordguess.guesses_left
    	  if wordguess.is_over? == true
    	    break
    	  end
		 	puts "Keep trying."
		 end
	end

	if wordguess.is_over? == true
    	    break
 	end
puts "Player 2 you have #{wordguess.guesses} guesses left and your word is: '#{wordguess.secret_word}'"
puts "Your letter guess is: "
	guessing_letter = gets.chomp
end

if wordguess.secret_word == wordguess.guessing_word
  puts "CONGRADULATIONS YOU WIN!!!!!!"
else
  puts "Better luck next time"
end

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





