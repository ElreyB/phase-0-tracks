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
  items.split(" ").each {|x| grocery_list[x]= 0}
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
