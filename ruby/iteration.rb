def foo(array)
	array.each {|item| puts "This is an item in the array: #{item}"}
end
array = ["a","b","c","d"]

p foo(array)