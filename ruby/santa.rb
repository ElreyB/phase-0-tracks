class Santa

	def initialize(gender,ethnicity)
		print "Initializing Santa instance......"
		@gender = gender
		@ethnicity = ethnicity
		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		age = 0	
	end

	def speak
		print "Ho, ho, ho! Haaaapppy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		print "That was a good #{cookie}!"
	end
end

santa = Santa.new

p santa
puts santa.speak
puts santa.eat_milk_and_cookies("sugar cookie")
