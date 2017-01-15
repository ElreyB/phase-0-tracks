# Restaurant Events

# require gems that are needed
require 'sqlite3'
# create SQLite3 database
db = SQLite3::Database.new("restaurant_events.db")

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
		name VARCHAR(255)
	);
SQL
db.execute(create_table_occasions)

create_table_events = <<-SQL
	CREATE TABLE IF NOT EXISTS events(
		id INTEGER PRIMARY KEY,
		guest_id INT,
		occasion_id INT,
		event_id INT,
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
	db.execute("INSERT INTO occasions (name)
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
def add_event(db, guest_id, occasion_id, event_id, date_time)
	db.execute("INSERT INTO events (guest_id, occasion_id, event_id, dates)
		VALUES (?,?,?,?)", [guest_id, occasion_id, event_id, date_time])
end



# Interface
# Introduce event program
puts "Welcome to your Events Database Program Setup tutorial."
puts "Let's get start........"
puts "Enter the type of occasions you have at you establishment one at a time." 
puts "Example: Birthday, Anniversary, etc."
puts "Type 'done' when finish."
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


