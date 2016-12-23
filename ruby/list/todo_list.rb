class TodoList
	attr_reader :list

	def initialize(list)
		@list = list
	end

	def get_items
		list
	end

	
end