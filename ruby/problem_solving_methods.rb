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
# def fib(number)
# 	arr = [0,1]
# 	counter = 2
# 	for i in 1..number-2
# 		arr[counter] = arr[counter-2] + arr[counter-1]
# 		counter += 1
# 	end
# 	arr
# 	# (arr[-2] + arr[-3]) == arr[-1] ---> 
# end

# p fib(6)
#-->[0,1,1,2,3,5]
# num = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, 2971215073, 4807526976, 7778742049, 12586269025, 20365011074, 32951280099, 53316291173, 86267571272, 139583862445, 225851433717, 365435296162, 591286729879, 956722026041, 1548008755920, 2504730781961, 4052739537881, 6557470319842, 10610209857723, 17167680177565, 27777890035288, 44945570212853, 72723460248141, 117669030460994, 190392490709135, 308061521170129, 498454011879264, 806515533049393, 1304969544928657, 2111485077978050, 3416454622906707, 5527939700884757, 8944394323791464, 14472334024676221, 23416728348467685, 37889062373143906, 61305790721611591, 99194853094755497, 160500643816367088, 259695496911122585, 420196140727489673, 679891637638612258, 1100087778366101931, 1779979416004714189, 2880067194370816120, 4660046610375530309, 7540113804746346429, 12200160415121876738, 19740274219868223167, 31940434634990099905, 51680708854858323072, 83621143489848422977, 135301852344706746049, 218922995834555169026]

# p (num[-2] + num[-3]) == num[-1]

#1 Wrtie a bubble sorting method that takes an array of numbers
#2 Sorts the array from smallest to bigget number
#3 By looking at all the elements in the array starting at the first and second element
#4 Compares the two 
		#If the second element is greater than the first element
			#they are sorted
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
			if array[i] < array[i+1] #compare first and second element, then second and thrid, etc
				p i
				p array
			else
				temp = array[i]
				array[i] = array[i+1]
				array[i+1] = temp
				p i	
				p array
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









