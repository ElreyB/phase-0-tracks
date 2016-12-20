class Santa
	attr_reader :age, :ethnicity, :reindeer_ranking
	attr_accessor :gender

	def initialize(gender,ethnicity)
		print "Initializing Santa instance......\n"
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(0..140)	
	end

	def speak
		print "Ho, ho, ho! Haaaapppy holidays!\n"
	end

	def eat_milk_and_cookies(cookie)
		print "Santa has some of your cookies and milk then says, "
		print "'Mmmmmmmm, That was a good #{cookie} cookie!'\n"
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

	def reindeer_call
		puts "#{gender} #{@ethnicity} says,"
		reindeer_ranking.each do |reindeer| 
			puts "On #{reindeer}"
		end
		puts "Away we GOOOO!!!!!!"
	end

	def about
		puts "I am a #{@age} year #{gender} #{@ethnicity} Santa."
	end
end

#List of genders, ethnicities
genders = ["Spirit", "Female", "Bigender", "Male", "Transgender", "Gender fluid", "N/A"]
ethnicities = ["Black", "Latino", "White", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
cookies = ["Oatmeal", "Oatmeal Raisin", "Chocolate Chip", "Sugar", "Peanut Butter", "Ginger", "Snickerdoodles"]
reindeers = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
#Randomly pick item from list
random_gender = genders.sample
random_ethnicities = ethnicities.sample
random_cookies = cookies.sample
random_reindeer = reindeers.sample




#driver code
santa = Santa.new(random_gender, random_ethnicities)
santa.about
santa.reindeer_call
santa.eat_milk_and_cookies(random_cookies)
santa.celebrate_birthday
puts "'I shouldn't eat some many cookies. Next year Santa will be #{santa.age}'"
puts "'HEY #{random_reindeer.upcase}!!!! No, eating my cookies. Back of the line.'"
p santa.get_mad_at(random_reindeer)
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