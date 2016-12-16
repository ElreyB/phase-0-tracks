#5.6 Pairing
#Elrey and Ally

#Write a method that takes an array of integers and an integer to search for
#The method should return the index of the item, or nil if the integer 
#is not present in the array. Don't use built-in array methods like

arr = [42, 89, 23, 1] 
def search_array(array, item)
	counter = 0
	array.each do |element|	
		if item == element
			puts "HI"
		else
			puts "no"
		end
		p counter
	end

	# counter = 0
	# while counter < array.length
	# 	if item == 
	# 	counter += 1
	# end
	#taken num to search throught the 
	#
	#return the index number
end

arr = [42, 89, 23, 1] 
p search_array(arr, 1)
#=> 3
