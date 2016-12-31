class Santa
	#getter
	attr_reader :age, :ethnicity
	#setter
	attr_accessor :gender

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

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer)
		position = @reindeer_ranking.index(reindeer)
		@reindeer_ranking.delete_at(position)
		@reindeer_ranking.push(reindeer)
		@reindeer_ranking
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

#p more_santas

more_santas["Sam"].celebrate_birthday
more_santas["Sam"].get_mad_at("Vixen")
more_santas["Sam"].gender = "Female"
more_santas["Sam"].age
more_santas["Sam"].ethnicity

#initialize for loop
printed_santa = nil

100.times do |i|
	printed_santa = Santa.new(example_genders.sample, example_ethnicities.sample)
	puts "Santa #{i}: is #{printed_santa.age} years old and is #{printed_santa.ethnicity}"
end