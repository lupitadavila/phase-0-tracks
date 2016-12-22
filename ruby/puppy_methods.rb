class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num_of_times)
  	num_of_times.times do
  		puts "Woof!"
  	end
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(human_years)
  	puts human_years*7
  	human_years*7
  end

  def stay(seconds)
  	puts "*stays for #{seconds} seconds*"
  end

end

#initialize instance of Puppy
skip = Puppy.new

skip.fetch("ball")
skip.speak(3)
skip.roll_over
skip.dog_years(2)
skip.stay(10)