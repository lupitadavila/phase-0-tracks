puts"Enter Hamster name."
hamsterName = gets.chomp

puts"Hamster volume level from 1-10"
volume = gets.chomp.to_i

puts"what is the fur color?"
furColor = gets.chomp

# Loop until user gives valid input
candidate = nil
until candidate == "y"||candidate == "Y"||candidate == "n"|| candidate == "N" || candidate == true || candidate == false
  puts"Hamster is a good candidate for adoption Y or N"
  candidate = gets.chomp
  if candidate == "y"||candidate == "Y"
    candidate = true
  elsif candidate == "n"||candidate == "N"
    candidate = false
  else
    puts"please enter Y or N"
  end
end  
puts"estimated age"
age = gets.chomp
if age == ""
  age = nil
else
  age = age.to_f
end

puts"\nYour Hamster information:"
puts"Your Hamsters name: #{hamsterName}"
puts"Your Hamsters volume: #{volume}"
puts"Your Hamsters fur color: #{furColor}"
puts"Your Hamsters a good candidate: #{candidate}"
puts"Your Hamsters age is: #{age}"