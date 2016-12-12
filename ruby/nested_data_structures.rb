#Dance class list of styles, levels, and teachers
dance_school = {
	modern_class: {
		styles: ['Horton', 'Limon', 'Graham'],
		classroom_level: {
			room1: 'Beginner',
			room2: 'Beginner/Intermediate',
			room3: 'Intermediate',
			room4: 'Advance'
		},
		department_head: 'Ms. Snow',
		teachers: ['John Smith', 'Sammual Pots', 'Cindy Chou', 'Roger Dean']
	},
	ballet_class: {
		styles: ['Balanchine', 'Vaganova', 'Cecchetti'],
		classroom_level: {
			room1: 'Level 1 & 2',
			room2: 'Level 3 & 4',
			room3: 'Level 4 & 5',
			room4: 'Pointe Work'
		},
		department_head: 'Mr Kipp Martian',
		teachers: ['Maria Jackson', 'Cameron McSteal', 'Katie Vanger', 'Nacy Cantra']
	},
	jazz_class: {
		styles: ['Tap Dacne', 'Swing', 'Flossie'],
		classroom_level: {
			room1: 'Level 1',
			room2: 'Level 2',
			room3: 'Level 3',
			room4: 'Level 4'
		},
		department_head: 'MJ',
		teachers: ['Levin Johnson', 'Oliver G. Bacston', 'Carter Hall', 'Bob Flossie']
	}
		
}
#Diver code to make sure data is correct
#p dance_school[:modern_class]
#p dance_school[:ballet_class]
#p dance_school[:jazz_class]

# MJ is no longer the department head of jazz. Janet Jackson is replacing him.
dance_school[:jazz_class][:department_head] = "Janet Jackson"
p dance_school[:jazz_class][:department_head]

# Where is the level for room 3 in modern
p dance_school[:modern_class][:classroom_level][:room3]

# Everyone hated ballet pointe work so we are getting rid of the class completely 
dance_school[:ballet_class][:classroom_level].delete(:room4)
p dance_school[:ballet_class][:classroom_level]

# Jazz swing class is now hip-hop
dance_school[:jazz_class][:styles][1] = "Hip-Hop"
p dance_school[:jazz_class][:styles]

# Improv has been added to modern styles
dance_school[:modern_class][:styles][3] = "Improv"
p dance_school[:modern_class][:styles]

# Male ballet dancers want to know if there is a room5 for them to practice in 
p dance_school[:ballet_class][:classroom_level].include?(:room5)

# Mr. Kipp Martin is very important, unusual, man  and likes his name print with all capital letters and backwards
dance_school[:ballet_class][:department_head].upcase!.reverse!
p dance_school[:ballet_class][:department_head]

puts "-----------------------------------"

#Print out who the modern teachers are in a readable way.
puts "Your modern teachers are:"
dance_school[:modern_class][:teachers].each {|teacher| puts "\t#{teacher}"}

puts "-----------------------------------"

#Print out the rooms and room level for ballet in a readable way.
dance_school[:ballet_class][:classroom_level].each do |room, level|
	puts "#{room.capitalize} is for ballet #{level}"
end




