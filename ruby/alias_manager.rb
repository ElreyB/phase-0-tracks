#Write a method that takes a name  and creates a fake name by 

#Swapping the first and last name.
def swap(full_name)
	split_name = full_name.split(' ')
	swapped_name = split_name.reverse.join(' ')
	swapped_name	
end

p swap("Elrey Belmonti")
#Change vowels to the next vowel.

#Change consonants to the next consonant.