# write a program that will allow an interior designer to enter the details of a 
# given client: the client's name, phone number, email,do they have kids, if so ,
# number of children, decor theme, 
#Convert input to the appropriate data type
puts "Please anwser the following questions:"
puts "What is you full name?"
	full_name = gets.chomp
puts "What is your phone number?"
	phone_number = gets.chomp.to_i
puts "What is you email address?"
	email = gets.chomp
puts "Do you have kids? (Y/N)"
	kids = gets.chomp.upcase
		if kids == "Y"
			puts "How many?"
				how_many = gets.chomp.to_i
		else
			how_many = "N/A"
		end
puts "What is your ideal decor theme would you like?"
	decor_theme = gets.chomp
puts "--------------------------"

#Driver code
# p full_name
# p phone_number
# p email
# p kids
# p how_many
# p decor_theme

#Add input to hash
#print hash
new_client = {
	full_name: full_name,
	phone_number: phone_number,
	email: email,
	kids: kids,
	number_of_kids: how_many,
	theme: decor_theme
}
p new_client
puts "---------------------------"
 puts "Full Name: #{new_client[:full_name]}"
 puts "Phone Number: #{new_client[:phone_number]}"
 puts "Email: #{new_client[:email]}"
 puts "Kids: #{new_client[:kids]}"
 puts "Number of kids: #{new_client[:number_of_kids]}"
 puts "Ideal theme: #{new_client[:theme]}"
puts "--------------------------"


#Prompt user which data they wish to change
	# if the user writes 'none' skip
	#but if user wants to change data
		#Ask for new value
		#update data
		#print updated hash
thanks = "Thank you! You will be contacted soon."
puts "What information would you like to change?\nIf there is nothing to change, type 'none'."
	change = gets.chomp.downcase
	if change == 'none'
		puts "---------------------------"
		puts thanks
	else
		if change == "full name"
			puts "What is you full name?"
			new_full_name = gets.chomp
			new_client[:full_name] = new_full_name
		elsif change == "phone number"
			puts "What is your phone number?"
			new_phone_number = gets.chomp.to_i
			new_client[:phone_number] = new_phone_number
		elsif change == "email"
			puts "What is you email address?"
			new_email = gets.chomp
			new_client[:email] = new_email
		elsif change == "kids"
			puts "Do you have kids? (Y/N)"
			new_kids = gets.chomp.upcase
				if new_kids == "Y"
					puts "How many?"
					new_how_many = gets.chomp.to_i
				else
					new_how_many = "N/A"
				end
			new_client[:kids] = new_kids	
			new_client[:number_of_kids]	= new_how_many
		elsif change == "number of kids"
			puts "How many?"
			new_how_many = gets.chomp.to_i
			new_client[:number_of_kids]	= new_how_many
		elsif change == 
									
		end
	puts new_client
	puts "---------------------------"
	puts "Full Name: #{new_client[:full_name]}"
 	puts "Phone Number: #{new_client[:phone_number]}"
 	puts "Email: #{new_client[:email]}"
	puts "Kids: #{new_client[:kids]}"
	puts "Number of kids: #{new_client[:number_of_kids]}"
	puts "Ideal theme: #{new_client[:theme]}"
	puts "--------------------------"
	puts thanks		
	end



#Exit program

