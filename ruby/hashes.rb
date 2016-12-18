interior_designer_app = {
	:name => "",
	:age => 0,
	:phone => "",
	:num_of_children => 0,
	:wallpaper => "",
	:is_ombre_fierce => false

}


# Ask for client name
puts "What is your name?"
interior_designer_app[:name] = gets.chomp

# Ask for client age
puts "What is your age in years?"
interior_designer_app[:age] = gets.chomp.to_i #convert to integer

# Ask for client phone
puts "What is your phone number? e.g (555) 555-555"
interior_designer_app[:phone] = gets.chomp

# Ask for number of children
puts "How many children do you have?"
interior_designer_app[:num_of_children] = gets.chomp.to_i #convert to integer

# Ask for wallpaper preference
puts "What wallpaper do you prefer? \na.) Paisley \nb.) Chevrons \nc.)Photorealistic wood \nd.)Abstract woodsy scene\n"
wallpaper = gets.chomp
# if letter corresponds to choice, set equal to that wallpaper type
if wallpaper == "a"
	interior_designer_app[:wallpaper] = "Paisley"
elsif wallpaper == "b"
	interior_designer_app[:wallpaper] = "Chevrons"
elsif wallpaper == "c"
	interior_designer_app[:wallpaper] = "Photorealistic wood"
elsif wallpaper == "d"
	interior_designer_app[:wallpaper] = "Abstract woodsy scene"
else
	interior_designer_app[:wallpaper] = "invalid answer"
end

#Ask if Ombre is fierce

puts "Is ombre fierce? (yes or no)"
ombre = gets.chomp

# If yes set equal to true, if no set equal to false
if ombre == "yes"
	interior_designer_app[:is_ombre_fierce] = true
elsif ombre == "no"
	interior_designer_app[:is_ombre_fierce] = false
else
	interior_designer_app[:is_ombre_fierce] = nil
end

#Ask user to review application
puts "\n\nPlease review your application:"
p interior_designer_app

puts "\n\nIf you need to make an edit please provide key,\nif not please write 'none'."
edit = gets.chomp

# First check if response is none.
if edit == "none"
	puts "\nThank you. Application is complete."
else
	# If not none, check which key they are referring to and change to 
	# corresponding data type
	puts "What should we change the value to?"
	new_value = gets.chomp
	if edit == "age" || edit == "num_of_children"
		interior_designer_app[edit.intern] = new_value.to_i
	elsif edit == "is_ombre_fierce"
		# Make sure new value is an actual boolean when storing
		if new_value == "true"
			interior_designer_app[edit.intern] = true
		else
			interior_designer_app[edit.intern] = false
		end
	else
		# Requires no modification of type and is just a string
		interior_designer_app[edit.intern] = new_value
	end
end

#Print out the final hash
puts "\n\nHere is the final application:"
p interior_designer_app