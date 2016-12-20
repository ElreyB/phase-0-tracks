# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + "😢 "
# 	end

# 	def self.yell_happily(words)
# 		words + "!!!" + "😃 "
# 	end
# end

# p Shout.yell_angrily("Why is learn Ruby so hard")
# p Shout.yell_happily("Because learning is half the battle")

module Shout
	def yell_angrily(words)
		words + "!!!" + "😢 "
	end

	def yell_happily(words)
		words + "!!!" + "😃 "
	end
end

class Child
	include Shout
end

class Teacher
	include Shout
end

child = Child.new 
p child.yell_angrily("I'm hungry")
p child.yell_happily("Let's play")
puts "\n"
teacher = Teacher.new
p teacher.yell_angrily("Please be quite")
p teacher.yell_happily("The whole class got A's")