print "What is your hamsters name?\n"
	hamster_name = gets.chomp
print "From 1-10, how loud is your hamster?\n"
	noise_level = gets.chomp.to_i
print "What is your hamster's fur color?\n"
	fur_color = gets.chomp
print "Is your hamster ready for adoption? (Y/N)\n"
	adoptionable = gets.chomp
print "What is your hamster's estimated age?\n"
	age = gets.chomp
	if age == ""
		age = nil 
	end

p hamster_name
p noise_level
p fur_color
p adoptionable
p age
