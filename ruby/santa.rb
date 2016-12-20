class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender,ethnicity)
		print "Initializing Santa instance......\n"
		@gender = gender
		@ethnicity = ethnicity
		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(0..140)	
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
end

#List of genders, ethnicities
genders = ["Spirit", "Female", "Bigender", "Male", "Transgender", "Gender fluid", "N/A"]
ethnicities = ["Black", "Latino", "White", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

#Randomly pick item from list
random_gender = genders.sample
random_ethnicities = ethnicities.sample





#driver code
p santa = Santa.new("#{random_gender}", "#{random_ethnicities}")
p "Santa is #{santa.age} years old."

#setter method
# def gender=(new_gender)
	# 	@gender = new_gender
	# end

#getter method
	# def age
	# 	@age
	# end

	# def ethnicity
	# 	@ethnicity	
	# end