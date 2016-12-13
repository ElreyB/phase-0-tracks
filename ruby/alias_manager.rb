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

#user Interface
print "\t***Alias Creater***\n"
print "Enter first and last name to create an alias:\n"
	agent_name = gets.chomp
	alias_name = fakename(agent_name)
puts alias_name
