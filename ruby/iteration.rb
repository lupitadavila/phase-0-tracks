def holiday_greeting
	puts "Merry Christmas!"
	yield("Tiffany", "Lupita")
	puts "Looking forward to 2017!"
end

holiday_greeting {|name1,name2| puts "Happy New Year #{name1} and #{name2}!"}
