puts "What is your name?"
name = gets.chomp

puts "How old are you? What year were you born?"
age = gets.chomp
year = gets.chomp

puts "Our company cafeteria serves garlic bread. Should we order some for you? (y or n)"
garlic_bread = gets.chomp

puts "Would you like to enroll in the company's health insurance? (y or n)"
health_insurance = gets.chomp

is_vampire=""
puts Time.new.year - year.to_i

if (Time.new.year - year.to_i) == age.to_i
	is_vampire = false
	puts "NOT A VAMP. MOVE ALONG."
else
	is_vampire = true
	puts "YOU ARE A VAMPIRE :O"
end