class Santa

	def initialize(gender,ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer",
			"Prancer", "Vixen", "Comet", "Cupid", "Donner",
			"Blitzen"]
		@age= 0
	end

	def speak
		puts "Ho,ho,ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}"
	end
end

#santa_test = Santa.new
#santa_test.speak
#santa_test.eat_milk_and_cookies("snickerdoodle")


santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

more_santas = {}
example_names = ["Sam", "Tom", "Jay", "Nelly", "Bobbie", "Sean", "Oliver"]

example_genders.length.times do |i|
  more_santas[example_names[i]] = Santa.new(example_genders[i], example_ethnicities[i])
end

p more_santas
