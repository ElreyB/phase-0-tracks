#Write a method that takes a name  and creates a fake name by 

#Methods to
#Swapping the first and last name.
def swap(full_name)
	split_name = full_name.split(' ')
	swapped_name = split_name.reverse.join(' ')
	swapped_name	
end
#Driver code
#p swap("Elrey Belmonti")

#Change vowels to the next vowel.
def next_vowel(string)
	string.tr!("aeiouAEIOU", "eiouaEIOUA")
	string
end
#p next_vowel("ElreyA BelmOnti")

#Change consonants to the next consonant.
def next_consonat(string)
	string.tr!("bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ",
		"cdfghjklmnpqrstvwxyzbCDFGHJKLMNPQRSTVWYZB")
	string
end
#p next_consonat("Elrey BelmontiZ")
#p next_consonat(next_vowel(swap("Felicia Torres")))

def fakename(name)
	next_consonat(next_vowel(swap(name)))
end
#p fakename("Felicia Torres")

#Method to print names
def print_list(hash_list)
	hash_list.each do |name, alias_name|
		puts "#{name} your alias is #{alias_name}"
	end 
end

#user Interface
print "\t***Alias Creater***\n"
print "Enter first and last name to create an alias.\n"
print "Press 'Enter' and create another alias.\n"
print "Type 'quit' when done.(Case sensitive)\n"
puts "------------------------------------"
print "Enter first and last names to create aliases:\n"
agent_name = ''
stored_names = {}
	until agent_name == "quit"
	agent_name = gets.chomp
		if agent_name == "quit"
			break
		else
			alias_name = fakename(agent_name)
		#p alias_name -----> To check that all names enter changed
		end
		stored_names[agent_name]= alias_name
	end
puts "------------------------------------"
print_list(stored_names)
#End of program
