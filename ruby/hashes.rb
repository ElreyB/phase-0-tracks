# write a program that will allow an interior designer to enter the details of a 
# given client: the client's name, phone number, email,do they have kids, if so ,
# number of children, decor theme, 
#Convert input to the appropriate data type
puts "Please anwser the following questions:"
puts "What is you full name?"
	full_name = gets.chomp.to_s
puts "What is your phone number?"
	phone_number = gets.chomp.to_i
puts "What is you email address?"
	email = gets.chomp.to_s
puts "Do you have kids? (Y/N)"
	kids = gets.chomp.upcase
		if kids == "Y"
			puts "How many?"
				how_many = gets.chomp.to_i
		else
			how_many = nil
		end
puts "What decor theme would you like?"
	decor_theme = gets.chomp.to_s
puts "--------------------------"

p full_name
p phone_number
p email
p kids
p how_many
p decor_theme
#print hash

#Prompt user which data they wish to change
	# if the user writes 'none' skip
	#but if user wants to change data
		#update data
#print updated hash

