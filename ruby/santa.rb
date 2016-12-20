class Santa
	attr_reader :age, :ethnicity
	

	def initialize(gender,ethnicity)
		print "Initializing Santa instance......\n"
		@gender = gender
		@ethnicity = ethnicity
		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0	
	end

	def speak
		print "Ho, ho, ho! Haaaapppy holidays!\n"
	end

	def eat_milk_and_cookies(cookie)
		print "That was a good #{cookie}!\n"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer_name)
		@reindeer_ranking.each do |reindeer|
			if reindeer == reindeer_name
				@reindeer_ranking.delete(reindeer)
				@reindeer_ranking.insert(-1, reindeer)
			end
		end
		@reindeer_ranking
	end

	# def gender=(new_gender)
	# 	@gender = new_gender
	# end

	# def age
	# 	@age
	# end

	# def ethnicity
	# 	@ethnicity	
	# end

end

p santa = Santa.new("male", "black")
santa.gender = "Female"
puts "Santa is #{santa.age} years old and #{santa.ethnicity}."
santa.celebrate_birthday
puts "Santa is #{santa.age} years old and #{santa.ethnicity}." 
p santa

# p santa
# puts santa.speak
# puts santa.eat_milk_and_cookies("sugar cookie")

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   p santas << Santa.new(example_genders[i], example_ethnicities[i])
# end
