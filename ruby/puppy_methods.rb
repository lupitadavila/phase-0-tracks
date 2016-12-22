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

  def initialize
	puts "Initializing new puppy instance..."
  end

end



class Cat

	def initialize
		puts "Created new cat..."		
	end

	def sleep(hours)
		puts "Slept #{hours} hours."
	end

	def mice_caught_today(num_mice)
		puts "Cat caught #{num_mice} mice today!"
	end

end

#initialize instance of Puppy
skip = Puppy.new

skip.fetch("ball")
skip.speak(3)
skip.roll_over
skip.dog_years(2)
skip.stay(10)

house = []
new_cat = nil

50.times do|cat|
	#cat+=1
	#cat = Cat.new
	house[cat] = Cat.new
end

house.each do|cat|
	cat.sleep(2)
	cat.mice_caught_today(5)
end

p house
#p house[0].sleep(2)
#p house[0].mice_caught_today(2)
