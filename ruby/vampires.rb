print "What is your name?\n"
	employee_name = gets.chomp
print "How old are you?\n"
	employee_age = gets.chomp.to_i
print "What year were you born?\n"
	employee_birth_year = gets.chomp.to_i

if 2016 - employee_birth_year == employee_age
  age = true
elsif 2016 - employee_birth_year == employee_age + 1
  age = true
end

print "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)\n"
	bread_order = gets.chomp.downcase
	bread_order = bread_order == "y"

print "Would you like to enroll in the company's health insurance? (y/n)\n"
	insurance = gets.chomp.downcase
	insurance = insurance == "y"

detect = "Results inconclusive"
if age && (bread_order || insurance)
	puts "Probably not a vampire."
end
if !age && (bread_order || insurance)
	puts "Probably a vampire."
end
if !age

