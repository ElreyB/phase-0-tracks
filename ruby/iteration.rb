#5.3 Mandatory pairing
#Elrey and Jack Loftus

def foo(array)
	array.each {|item| puts "This is an item in the array: #{item}"}
end
array = ["a","b","c","d"]
p foo(array)

colors = ["red", "green", "blue"]

profile = {
	name: "Bob",
	age: 55,
	hair_color: "Purple",
	shoe_size: 10,
	happy_person: true
}

#.each
colors.each {|color| puts "#{color.upcase} is a component of RGB!"}

profile.each do |key, value|
	puts "Your #{key} is #{value}."
	end

# .map
p colors
color_cats = colors.map do |color| 
	"#{color} cat"
end
p color_cats

p profile
new_name = profile.map do |key, value|
  key.to_s + " is " + value.to_s
end
p new_name


# map!
p colors
colors.map!{|color| color + "!"}
p colors

# Method to iterate through items and delete any that meet a certain condition
# .delete_if
p colors
colors.delete_if {|color| color.downcase.include?('r')}
p colors

p profile
profile.delete_if {|key, value| value.class == Fixnum}
p profile

# A method that filters a data structure for only 
# items that do satisfy a certain condition 
# .select
p colors
colors.select! do |color|
	color.downcase.include?('u')
end
p colors

p profile
profile.select! do |key, value|
	value.class == String
end
p profile

#A different method that filters a data structure 
#for only items satisfying a certain condition
# .keep_if
p colors
colors.keep_if {|color| color.upcase.include?('G')}
p colors

p profile
profile.keep_if {|key,value| key.to_s.downcase == "name"}
p profile

# Method that removes item condition in the block evaluates to false
# .drop_while
p colors
p colors.drop_while  {|c| (c == "red" || c == "green")} 

# Method that removes item condition in the block evaluates to false
# .reject!
p profile
profile.reject! {|key,value| key > :shoe_size}
p profile

