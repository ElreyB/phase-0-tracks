# def foo(array)
# 	array.each {|item| puts "This is an item in the array: #{item}"}
# end
# array = ["a","b","c","d"]
# p foo(array)

colors = ["red", "green", "blue"]

profile = {
	name: "Bob",
	age: 55,
	hair_color: "Purple",
	shoe_size: 10,
	happy_person: true
}

#.each
#colors.each {|color| puts "#{color.upcase} is a component of RGB!"}

#profile.each do |key, value|
	# puts "Your #{key} is #{value}."
	# end

#.map
# p colors
# colors.map do |color| 
# 	puts "#{color} cat"
# end
# p colors


#!map
# p colors
# colors.map!{|color| color + "!"}
# p colors

#Method to iterate through items and delete any that meet a certain condition
#.delete_if
p colors
colors.delete_if {|color| color.downcase.include?('r')}
p colors

p profile
profile.delete_if {|key, value| value.class == Fixnum}
p profile





