#GPS 2.2 - Ruby  
#12/20/2016 9:00PM

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

add(groceries,"Lemonade",2)
add(groceries,"Tomatoes",3)
add(groceries,"Onions",1)
add(groceries,"Ice Cream",4)

# Method to remove an item from the list
# input: list, item
# steps: Remove item using list.delete(item)
# output: hash of updated list

def remove(list,item)
	list.delete(item)
	list
end

p remove(groceries,"Lemonade")

# Method to update the quantity of an item
# input: list , item, quantity
# steps: Similar to our add method 
# output:new list

def update(list, item, quantity)
	if list[item] 
	list[item] = quantity
	else
		puts "Your item is not on the list"
	end
	list
end

update(groceries, "apples", 5)
update(groceries, "Steak", 1)

# Method to print a list and make it look pretty
# input: list
# steps: Iterate through each elemnent and print it out on a new line.
# output: Item and quantity on each line

def print_list(list)
	list.each {|item, quantity| puts "#{item}: #{quantity}"}
end

#print_list(groceries)
##
