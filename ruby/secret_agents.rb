# write a method that advances every letter of a string one letter forward
# abd => bcd
def encrypt(string)
# define a variable that equals the lenth of the string
counter = 0
# counter starter number
	while counter < string.length 
		if string[counter] == "z"
			string[counter] = "a"
		else
			string[counter] = string[counter].next
		end
		#string = ally
		#string.length = 4 
		#string[0] = a --> b 
		#string[1] = l --> m

	counter += 1
	end
	string
end

# p encrypt("ally") # -->"bmmz"



def decrypt(string) # ----> boy
alphabet = "abcdefghijklmnopqrstuvwxyz"

counter = 0
	while counter < string.length
		letter = string[counter] # ---> b
		current_index = alphabet.index(letter) # --> 1
		new_index = current_index-1
		string[counter] = alphabet[new_index]

		counter += 1
	end
	string
end

# p decrypt("boy") # --> anx

# p encrypt("abc")
# p encrypt("zed")
# p decrypt("bcd")
# p decrypt("afe")

# p decrypt(encrypt("swordfish"))
# Because of order of operation, the value of encrypt is return first, then 
#that value is used for the argument of decrypt 

print "Agent, would you like to encrypt or decrypt a password?\n"
	input = gets.chomp.downcase

print "Type in your password: \n"
	password = gets.chomp.downcase

	if input == "encrypt"
		password = encrypt(password)
	elsif input == "decrypt"
		password = decrypt(password)
	end

print "Your #{input + "ed"} password is '#{password}'.\n"




