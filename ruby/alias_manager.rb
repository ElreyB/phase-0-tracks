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

p next_vowel("ElreyA BelmOnti")
#Change consonants to the next consonant.