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
	}
		
}
#Diver code to make sure data is correct
#p dance_school[:modern_class]
p dance_school[:ballet_class]