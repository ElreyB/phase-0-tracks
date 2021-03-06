#GPS2.2
# Elrey and Zaw

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: seperate the items in an array

  #
  # set default quantity will be 0
  # print the list to the console [can you use one of your other methods here?]
# output: hash with the key as the item and value as the quantity
def create_list(items)
  grocery_list = {}
  items.split(" ").map!{|x| grocery_list[x]= 0}
  grocery_list
end

#create_list ("carrot banana tomato")

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: list will be the name of the hash
 	# item will be the key
 	#quantity will be the value
# output:the hash with added hash
def add_item(list, item, quantity)
  list[item] = quantity
end

# Method to remove an item from the list
# input:list and the item
# steps: iterate through the hash for the key
 	# remove the item key
# output: updated hash
def remove_item (list, item)
  list.delete(item)
end

#remove_item(grocery_list, "banana")

# Method to update the quantity of an item
# input: list, item, new quantity
# steps:iterate through the list to find the item
 	#update the quantity of item
# output:updated hash
def update_quantity (list, item, quantity)
    list[item] = quantity
end

# Method to print a list and make it look pretty
# input:list
# steps:iterate through print
 # Here is your list:
 # list name
 # item : quantity
# output: pretty printed list
def print_pretty (list)
  puts "Grocery list".upcase.center(50)
  puts "-----------------".center(50)
  list.each do |item,quantity|
  puts item.rjust(25) + ":" + quantity.to_s.ljust(25) 
  end
end

#print_pretty("Today List" ,grocery_list)


# 
# Create a new list
grocery_list = create_list("carrot banana tomato")
p grocery_list
puts "-----------------------------------------"
# Add the following items to your list
add_item(grocery_list,"Lemonade", 2)
add_item(grocery_list,"Tomatoes" , 3)
add_item(grocery_list,"Onions" , 1)
add_item(grocery_list,"Ice Cream" , 4)
p grocery_list
puts "-----------------------------------------"
remove_item(grocery_list,"Lemonade")
p grocery_list
puts "-----------------------------------------"
update_quantity(grocery_list,"Ice Cream" , 1)
p grocery_list
puts "-----------------------------------------"
print_pretty(grocery_list)

# What did you learn about pseudocode from working on this challenge?
# The more details the better. Still having some trouble with this.

# What are the tradeoffs of using arrays and hashes for this challenge?
# Since the list had to parts, an item and quantity, the hash
# was more useful. We could have use an array but it would not be as organized.

# What does a method return?
# A method returns the last line of code.

# What kind of things can you pass into methods as arguments?
# Methods will pass the arguments that the method's parameter specifies.

# How can you pass information between methods?
# By assigning a variable to the output of the method.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# The concept of assigning a variable to an output of a method out side that was
# solidified for me.  I was a litte confuse about how that all worked.
# Pseudocode still is a little bit confusing to me. I feel I need a good, solid
# and visiual template to really understand how to write good pseudocode.
