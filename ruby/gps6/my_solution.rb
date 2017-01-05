# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative - access to file in relative path (same directory)
# Require used for files outside of directory or for Ruby libraries/gems

require_relative 'state_data'

class VirusPredictor

  # Defining user input and setting instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Calling methods with instance variables
  def virus_effects
    #predicted_deaths #(@population_density, @population, @state)
    #speed_of_spread #(@population_density, @state)

    if @population_density >= 200
      predicted_deaths(@population, 0.4)
      speed_of_spread(0.5)
    elsif @population_density >= 150
      predicted_deaths(@population, 0.3)
      speed_of_spread(1)
    elsif @population_density >= 100
      predicted_deaths(@population, 0.2)
      speed_of_spread(1.5)
    elsif @population_density >= 50
      predicted_deaths(@population, 0.1)
      speed_of_spread(2.0)
    else
      predicted_deaths(@population, 0.05)
      speed_of_spread(2.5)
    end

  end

  private

  # Calculating each private input of the predicted deaths
  def predicted_deaths(population,rate) #(population_density, population, state)
    number_of_deaths = (population * rate).floor
    # predicted deaths is solely based on population density
    #if @population_density >= 200
    # number_of_deaths = (@population * 0.4).floor
    #elsif @population_density >= 150
    #  number_of_deaths = (@population * 0.3).floor
    #elsif @population_density >= 100
    #  number_of_deaths = (@population * 0.2).floor
    #elsif @population_density >= 50
    #  number_of_deaths = (@population * 0.1).floor
    #else
    #  number_of_deaths = (@population * 0.05).floor
    #end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Calculates speed of spread of disease based on private information
  def speed_of_spread(speed) #(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    #speed = 0.0

    #if @population_density >= 200
    #  speed += 0.5
    #elsif @population_density >= 150
    #  speed += 1
    #elsif @population_density >= 100
    #  speed += 1.5
    #elsif @population_density >= 50
    #  speed += 2
    #else
    #  speed += 2.5
    #end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects

#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects

#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects

#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects

STATE_DATA.each do |state_name,state_data|
  state = VirusPredictor.new(state_name,state_data[:population_density], state_data[:population])
  state.virus_effects 
end


#=======================================================================
# Reflection Section

# The first key and the second hash uses symbols for keys
# require_relative works with files in same path/directory while require allows you to access libraries or gems outside of the directory
# You can iterate through a hash using a .each, for loop, while loop, or .map
# The methods had parameters but inside the method they were using instance variables which made the parameters unnecessary.
# We solidified defining how to work outside of classes (private vs not private) and when to use required_relative vs required to use files/libraries. Also the DRY concept of refactoring and simplifying code.