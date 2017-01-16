# Restaurant Events

# require gems that are needed
require 'sqlite3'
# create SQLite3 database
db = SQLite3::Database.new("restaurant_events.db")
db.results_as_hash = true

# create schema tables with fancy string delimiters
create_table_guests = <<-SQL
	CREATE TABLE IF NOT EXISTS guests(
		id INTEGER PRIMARY KEY,
		full_name VARCHAR(255),
		email VARCHAR(320),
		contact_number INT
	);
SQL
db.execute(create_table_guests)

create_table_types = <<-SQL
	CREATE TABLE IF NOT EXISTS types(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255)
	);
SQL
db.execute(create_table_types)

create_table_occasions = <<-SQL
	CREATE TABLE IF NOT EXISTS occasions(
		id INTEGER PRIMARY KEY,
		theme VARCHAR(255)
	);
SQL
db.execute(create_table_occasions)

create_table_events = <<-SQL
	CREATE TABLE IF NOT EXISTS events(
		id INTEGER PRIMARY KEY,
		guest_id INT,
		occasion_id INT,
		type_id INT,
		dates DATETIME
	);
SQL
db.execute(create_table_events)
# Business code

# Method: Adds guest to guest table
# input: db, full name, email, contact number ---> db, string, string, integer
# steps: inserts name into guests table
# output: N/A
def add_guest(db, full_name, email, contact_number)
	db.execute("INSERT INTO guests (full_name, email, contact_number) 
		VALUES (?,?,?)", [full_name, email, contact_number])
end
# Method: Adds occasion to occasions table
# input: type of occasion ------> string
# steps: inserts occasion type into occasions table
# output: N/A
def add_occasion(db, occasion)
	db.execute("INSERT INTO occasions (theme)
		VALUES (?)", [occasion])
end


# Method: Adds event type to types table
# input: event type ------->string
# steps: inserts event type into types table
# output: N/A
def add_type(db, type)
	db.execute("INSERT INTO types (name)
		VALUES (?)", [type])
end

# Method: Adds event information to events table
# input: guest_id ---> integer, occasion_id ---> integer, type_id ---> integer
			   # datetime ---> string 
# steps: inserts information into events table
# output: N/A
def add_event(db, guest_id, occasion_id, type_id, date_time)
	db.execute("INSERT INTO events (guest_id, occasion_id, type_id, dates)
		VALUES (?,?,?,?)", [guest_id, occasion_id, type_id, date_time])
end


# Interface
# Introduce event program
puts "Welcome to your Events Database Program Setup tutorial."
puts "Let's get start........"
puts "Let us setup your database for the types of occasions you have at you establishment."
puts "Enter the theme of occasions you have at you establishment one at a time." 
puts "Example: Birthday, Anniversary, etc."
puts "Type 'done' when finish."
puts "\n"
puts "What type of occasions do you have at your establishment?"
	occasion_input = ""
	establish_occasions = []
		while occasion_input != "done"
			occasion_input = gets.chomp.downcase
			if occasion_input == "done"
				break
			else
				establish_occasions.push(occasion_input)
				establish_occasions
			end	
		end

	establish_occasions.each do |occasion|
		add_occasion(db, occasion)
	end

puts "Here is how the occasions database looks like..."
puts "================================================="
puts "Occasions"
puts "-----------"
occasion_list = db.execute("SELECT * FROM occasions")
occasion_list.each do |occasion|
	puts "#{occasion['id']}" + " | " + "#{occasion['theme']}"
end
puts "================================================="
puts "Notice that every entry you make with have a unique number assign to it."
puts "Don't worry about this now but know you will use this unique number later."
puts "\n"
puts "Now, let us setup your database for event type you have at you establishment."
puts "Enter the event type you have at you establishment one at a time." 
puts "Example: Private, Semi_private, etc."
puts "Type 'done' when finish."
puts "What event type do you have at your establishment?"
	type_input = ""
	establish_types = []
		while type_input != "done"
			type_input = gets.chomp.downcase
			if type_input == "done"
				break
			else
				establish_types.push(type_input)
			end
		end

	establish_types.each do |type|
		add_type(db, type)
	end
puts "Okay, now that that is done let us enter your establishment's guests' information."
puts "The format for this is:"
puts "Guest full name, email, and contact number in this order."
puts "If they do not have an email and/or contact number type 'null' as a place holder."
puts "In a later tutorial we learn how to update your database."
puts "For this tutorial let's enter everything that is needed for your database."
puts "The program will first ask you how many guests you are entering."
puts "You can enter 1-100 guests if you like but for now let's do 3."
puts "It will then ask you for a full name, an email, and a contact number individually."
puts "Example: Full name: 'Bob Smith', Email: bobisgreat@aol.com, Contact number : 1234567890"
puts "Let's give it a try."
puts "\n"
puts "How many guests will you enter today?"
	amount_of_guests = gets.chomp.to_i 
	establish_guests = []
	until amount_of_guests == 0
		puts "What is the guest's full name?"
		print "Name: \n"
		full_name = gets.chomp.to_s
		puts "What is the guest's email?"
		print "Email: \n"
		email = gets.chomp.to_s
		puts "What is the guest's contact number?"
		print "Contact number: \n"
		contact_number = gets.chomp.to_i
		guests_list = full_name, email, contact_number
		establish_guests.push(guests_list)
	amount_of_guests -= 1
	end
	establish_guests.each do |events|
		add_guest(db, full_name, email, contact_number)
	end
puts "\n"
puts "Now it is time to combine the data to make a compelet events database."
puts "Remember those unique ids from before:"
occasion_list = db.execute("SELECT * FROM occasions")
occasion_list.each do |occasion|
	puts "#{occasion['id']}" + " | " + "#{occasion['theme']}"
end
puts "We will be entering those ids in our events database allow with a date and time of event."
puts "It will look wired are first but in later tutorials this part will have more of 'user friendly' look it."
puts "For now, we will just setup your events database in a raw way."
puts "\n"
puts "The program will first ask you how many events you are entering. Lets ust do 2 for now."
puts "The program will then ask you for 4 things."
puts "Guest id, Occasion id, Event id, Date and time of the event which is done in militray time."
puts "Example: Guest id: 1,Occasion id: 3, Event id: 2, Date and time: 11-22-2016 15:00"
puts "Let give it try."
puts "\n"
puts "How many events are you entering?"
	amount_of_events = gets.chomp.to_i
	establish_events = []
	until amount_of_events == 0
		puts "What is the guest's id?"
		print "Guest id: \n"
		guest_id = gets.chomp.to_i
		puts "What is the occasion id?"
		print "Occasion id: \n"
		occasion_id = gets.chomp.to_i
		puts "What is the event id?"
		print "Event id: \n"
		type_id = gets.chomp.to_i
		puts "What is the date and time of event?"
		print "Date and time: \n"
		date_time = gets.chomp.to_s
		events_list = guest_id, occasion_id, type_id, date_time
		establish_events.push(events_list)
	amount_of_events -= 1
	end
	establish_events.each do |events|
		add_event(db, guest_id, occasion_id, type_id, date_time)
	end
puts "Let take a look at the events database."
puts "================================================="
puts "Events"
puts "-----------"
events_list = db.execute("SELECT * FROM events")
events_list.each do |event|
	event_table = "#{event['guest_id']}"
	event_table += " | " 
	event_table += "#{event['occasion_id']}"
	event_table += " | " 
	event_table += "#{event['type_id']}"
	event_table += " | "
	event_table += "#{event['dates']}"
	puts event_table 
end
puts "================================================="
puts "I know table is a little hard to understand right now but"
puts "later on we it will look more user friendly."
puts "Like this:"

 
full_list = db.execute("SELECT
	guests.full_name,
	occasions.theme,
	types.name,
	events.dates
	FROM guests
	INNER JOIN events ON events.guest_id = guests.id
	INNER JOIN occasions ON events.occasion_id = occasions.id
	INNER JOIN types ON events.type_id = types.id")

full_list.each do |items|
	full_table = "#{items['full_name']}"
	full_table += " | " 
	full_table += "#{items['theme']}"
	full_table += " | " 
	full_table += "#{items['name']}"
	full_table += " | " 
	full_table += "#{items['dates']}"
	puts full_table
end

puts "But for now let's not worry about that."
puts "We will save that for another day."
puts "Great Job! 😀"


# Ask how many events they wish to add to database
# loop until done
# Ask for guests full name
# Ask for guest's event occasion
# Ask for date and time of event
# Ask if they was to see full list of events or just one event
	# Show events in a user friendly way
	# or
	# Show one event
# End program

# Driver code
# add_guest(db, "Elrey Belmonti", "shdidjei@yahoo.com", 1111111111)
# add_occasion(db, "birthday")
# add_type(db, "private")
# add_event(db,1, 1, 1, "01-22-2016 15:07")
# p occasion_input
# p establish_occasions
# p type_input
# p establish_types


