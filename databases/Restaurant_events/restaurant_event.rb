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

db.execute <<-SQL
	CREATE TABLE IF NOT EXISTS occasions(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255)
	);
SQL
db.execute <<-SQL
	CREATE TABLE IF NOT EXISTS types(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255)
	);
SQL
# Business code

# Method: Adds guest to guest table
# input: full name ----> string
# steps: inserts name into guests table
# output: N/A

# Method: Adds occasion to occasions table
# input: type of occasion ------> string
# steps: inserts occasion type into occasions table
# output: N/A

# Method: Adds event type to types table
# input: event type ------->string
# steps: inserts event type into types table
# output: N/A

# Method: Adds event information to events table
# input: guest_id ---> integer, occasion_id ---> integer, type_id ---> integer
			   # datetime ---> string 
# steps: inserts information into events table
# output: N/A



# Interface
# Introduce event program
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
