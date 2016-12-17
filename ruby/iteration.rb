def holiday_greeting
	puts "Merry Christmas!"
	yield("Tiffany", "Lupita")
	puts "Looking forward to 2017!"
end

holiday_greeting {|name1,name2| puts "Happy New Year #{name1} and #{name2}!"}


# ARRAY -------------

holiday_characters = ['Santa', 'Rudolph', 'Snowman', 'Elves']

#Iterate through array with .each
holiday_characters.each do |character|
	puts "Here comes #{character}!"
end

#Iterate through array with .map!
puts "Original data:"
p holiday_characters

holiday_characters.map! do |character|
	puts character
	character.upcase
end
puts "After .map! call:"
p holiday_characters



# HASH -------------

naughty_list = {
	"Bobbie" => "naughty",
	"Stephanie"=>"nice",
	"Kyle" => "nice",
	"Jessica" => "naughty"
}

#Iterate through hash with .each
naughty_list.each do |name,behavior|
	puts "#{name} has been #{behavior} this year."
end

#Iterate through hash with .map
naughty_list.map do |name,behavior|
	puts name.upcase
	puts behavior.upcase
end

puts "After .map call:"
p naughty_list
#.map returns array therefore this method won't modify a hash


# OTHER ARRAY + HASH METHODS -------------

# array
odds = [1,3,5,7,9,11,13,15,17]

h = {
	"a" => 1,
	"b" => 2,
	"c" => 3,
	"d" => 4
}



#1 - A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).

#delete_if for an array
p odds.delete_if {|i| i>11}

#delete_if for a hash
p h.delete_if {|key,value| key == "a"}

#2 - A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).

#keep_if for an array
p odds.keep_if {|i| i!= 3}

#keep_if for a hash
p h.keep_if {|key,value| key != "a"}

#3-A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!
#take_while for an array
p odds.take_while {|i| i<3}

#select for a hash
p h.select {|key,value| key > "a"}

#4 - A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).

#drop_while for an array
p odds.drop_while{|i| i<9}

#reject for a hash
p h.reject{|key,value| key < "c"}