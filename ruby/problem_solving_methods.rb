#5.6 Pairing
#Elrey and Ally

#Write a method that takes an array of integers and an integer to search for
#The method should return the index of the item, or nil if the integer 
#is not present in the array. Don't use built-in array methods like

def search_array(array, item)
	counter = 0
	array.each do |element|	
		if item == element
			 counter
			  break
		else
			 counter += 1
		end
	end
	#If item is not in the array return nil
	if counter >= array.length
			return nil
		else
			counter
		end			
end

arr = [42, 89, 23, 1] 
p search_array(arr, 1)
#=> 3

# Method that does the Fibonacci terms
# Takes a given number
# Each number in the array is the some of the pervious two
# Lenght of the array is the same as the given number
# Return the array on sums
def fib(number)
	arr = [0,1]
	counter = 2
	for i in 1..number-2
		arr[counter] = arr[counter-2] + arr[counter-1]
		counter += 1
	end
	arr
end

p fib(6)
#-->[0,1,1,2,3,5]

#Fiboacci test
if fib(6).last == 6
	p '😀 ' # when right
else
	p '😨 ' # when wrong
end

#1 Wrtie a bubble sorting method that takes an array of numbers
#2 Sorts the array from smallest to bigget number
#3 By looking at all the elements in the array starting at the first and second element
#4 Compares the two 
		#If the second element is greater than the first element
			#they are sorted----> refactor this step out
		#If the second element is not greater than the first element
			#swap the elements
#6 Compare the next two elements (second and thrid) 
#7 repeat step 4
#8 repeat steps 3-7 until sorted
#Return sorted array
def bubble_sort(array)
temp = nil
	for n in 0..array.length-1
		swapped = false
		for i in 0...array.length-1
			if array[i] > array[i+1] 
				temp = array[i]
				array[i] = array[i+1]
				array[i+1] = temp
				swapped = true
			end
		end
		if !swapped
		break
		end
	end
		array
end


numbers = [7,35,2,97,13]

p bubble_sort(numbers)









