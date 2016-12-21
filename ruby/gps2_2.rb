# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Prompt user for what items they want to add
  # set default quantity to 1 unless otherwise noted
  # print the final list to the console with print list method
# output: hash of current shopping list

def create_list(list)
	list = list.split(" ")
	hsh = {}

	list.each{|i| hsh[i] = 1}

	###print hash
	hsh
end

groceries = create_list("carrots apples cereal pizza")
# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: Add item and quantity to list(hash) using list[item name] = quantity
# output: hash of updated list

def add(list, item, quantity)
	list[item] = quantity
	list
end

add(groceries,"spinach",2)

# Method to remove an item from the list
# input: list, item
# steps: Remove item using list.delete(item)
# output: hash of updated list

def remove(list,item)
	list.delete(item)
	list
end

p remove(groceries,"pizza")

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output: