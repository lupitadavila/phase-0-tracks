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

year_check = Time.new.year-year.to_i # Check age from year given
is_vampire = "" #initialize result variable

#If the employee got their age right, and is willing to eat garlic bread or sign up for insurance
if (year_check == age.to_i) && (garlic_bread == "y" || health_insurance == "y")
	is_vampire = "Probably not a vampire."
end
#If the employee got their age wrong, and hates garlic bread or waives insurance
if (year_check != age.to_i) && (garlic_bread == "n" || health_insurance == "n")
	is_vampire = "Probably a vampire."
end
#If the employee got their age wrong, hates garlic bread, and doesn’t want insurance
if (year_check != age.to_i) && garlic_bread == "n" && health_insurance == "n"
	is_vampire = "Almost certainly a vampire."
end
#If the employee has the name of “Drake Cula” or “Tu Fang”
if user_name == "Drake Cula" || user_name == "Tu Fang"
	is_vampire = "Definitely a vampire."
end

if is_vampire == "" ## none of the previous conditions were met
 	is_vampire = "Results inconclusive."
end

puts "This is the final answer " + is_vampire