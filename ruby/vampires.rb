### Ask user questions

puts "What is your name?"
user_name = gets.chomp

puts "How old are you? What year were you born?"
age = gets.chomp
year = gets.chomp

puts "Our company cafeteria serves garlic bread. Should we order some for you? (y or n)"
garlic_bread = gets.chomp

puts "Would you like to enroll in the company's health insurance? (y or n)"
health_insurance = gets.chomp

### Detection Logic

# Check age from year given
year_check = Time.new.year-year.to_i
is_vampire = "" #initialize result variable

#If the employee got their age right, and is willing to eat garlic bread or sign up for insurance
if (year_check == age.to_i) && (garlic_bread == "y" || health_insurance == "y")
	is_vampire = "Probably not a vampire."
elsif (year_check != age.to_i) && (garlic_bread == "n" || health_insurance == "n")
	is_vampire = "Probably a vampire."
elsif (year_check != age.to_i) && garlic_bread == "n" && health_insurance == "n"
	is_vampire = "Almost certainly a vampire."
elsif user_name == "Drake Cula" || user_name == "Tu Fang"
	is_vampire = "Definitely a vampire."
else
	is_vampire = "Results inconclusive."
end

puts is_vampire