### Ask user questions

puts "How many employees are you processing?"
num_employees = gets.chomp

i = 0 # initialize loop variable
while i < num_employees.to_i

	puts "\nWhat is the name of employee " + (i+1).to_s + "?" #changed text to help keep track of which employee info you are filling out
	user_name = gets.chomp

	puts "How old are you? What year were you born?"
	age = gets.chomp
	year = gets.chomp

	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y or n)"
	garlic_bread = gets.chomp

	puts "Would you like to enroll in the company's health insurance? (y or n)"
	health_insurance = gets.chomp

	puts "Do you have any allergies? Type 'done' when complete"
	sunshine = false
	allergy = ""
	while allergy != "done"
		allergy = gets.chomp
		if allergy == "sunshine"
			sunshine = true
		end
	end



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

	if sunshine
		is_vampire = "Probably a vampire."
	end

	puts user_name + " is: " + is_vampire

	i+=1 # loop to next 
end