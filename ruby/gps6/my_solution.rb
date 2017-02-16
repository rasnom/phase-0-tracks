# Virus Predictor

# I worked on this challenge with Ransom Byers (John Gill guide).
# We spent 2.5 hours on this challenge.

# EXPLANATION OF require_relative
# require_relative allows the code in this file to see the data/code that is in the referenced file.
# the "relative" part makes it so this code starts looking for the referenced file in the directory where this file is located.
#
require_relative 'state_data'

class VirusPredictor

  # accept state, population density, and population values
  # and set instance variables - this method called upon .new
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # call predicted_deaths and speed_of_spread methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # calculate predicted deaths based on pop. density and print out results for this state
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density
      when 0..49
        multiplier_factor = 0.05
      when 50..99
        multiplier_factor = 0.1
      when 100..149
        multiplier_factor = 0.2
      when 150..199
        multiplier_factor = 0.3
      else
        multiplier_factor = 0.4
    end
    
    number_of_deaths = (@population * multiplier_factor).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

 # calculate speed of spread for this state based on pop. density
  def speed_of_spread    #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    case @population_density
      when 0..49
        speed = 2.5
      when 50..99
        speed = 2
      when 100..149
        speed = 1.5
      when 150..199
        speed = 1
      else
        speed = 0.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state_name,pop_data|
  VirusPredictor.new(state_name, pop_data[:population_density], pop_data[:population]).virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


# REVIEW AND REFLECT
# What are the differences between the two different hash syntaxes shown in the state_data file?
# 
# One uses strings as the key and the "=>" operator and the other uses symbols
# and ":"

# What does require_relative do? How is it different from require? 
#
# It adds the contents of the required file the first time it is required. 
# The difference is that the file path is relative to the location of the 
# file that is using the require.

# What are some ways to iterate through a hash?
# 
# .each, .each_key, .each_value
# pull out the keys as a separate array and iterate through them


# When refactoring virus_effects, what stood out to you about the variables, if anything?
#
# That we did not have to pass the variables because they were already
# accessible to the class methods.

# What concept did you most solidify in this challenge?
#
# That in ruby, the default scope is only the current context and not
# also nested contexts like it is in C.


