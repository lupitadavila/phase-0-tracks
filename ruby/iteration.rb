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