#5.6 Pairing
#Elrey and Ally

#Write a method that takes an array of integers and an integer to search for
#The method should return the index of the item, or nil if the integer 
#is not present in the array. Don't use built-in array methods like

# def search_array(array, item)
# 	counter = 0
# 	array.each do |element|	
# 		if item == element
# 			 counter
# 			  break
# 		else
# 			 counter += 1
# 		end
# 	end
# 	#If item is not in the array return nil
# 	if counter >= array.length
# 			return nil
# 		else
# 			counter
# 		end			
# end

# arr = [42, 89, 23, 1] 
# p search_array(arr, 1)
#=> 3

#Method that does the Fibonacci terms
#Takes a given number
#Each number in the array is the some of the pervious two
#Lenght of the array is the same as the given number
#Return the array on sums
def fib(number)
	arr = [0,1]
	counter = 2
		arr[counter] = arr[counter-2] + arr[counter-1]
		 arr
end

p fib(6)
#-->[0,1,1,2,3,5]














