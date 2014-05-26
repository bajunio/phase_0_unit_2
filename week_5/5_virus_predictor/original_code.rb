# U2.W5: Virus Predictor

# I worked on this challenge by myself.

# EXPLANATION OF require_relative
# Simply ties this file to the 'state_data' file located in the same directory.

# EXPLANATION OF state_data file
# What we have is a nested hash.  Its using the good ol' hash rocket => to create
# the nested hash tables.  Then it swaps it up and uses the symbol method to
# build the nested hash tables.

require_relative 'state_data'

class VirusPredictor
  # initializes all of the instance variables
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end
  # allows you to pull specific information from the class.  you'd be able to call
  # the deaths_spread but it has been set to private and won't be accessable from
  # the outside of this class.
  def virus_effects  
    deaths_spread(@population_density, @population, @state)
  end

private
# The following methods will be private and will not be accessed from outside this class.
  # passes three args and updates the number_of_deaths and speed variables.
  def deaths_spread(population_density, population, state)
    speed = 0.0
    case 
    when @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
      speed += 0.5
    when @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
      speed += 1
    when @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
      speed += 1.5
    when @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
      speed += 2
    else
      number_of_deaths = (@population * 0.05).floor
      speed += 2.5
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"

  end
end

#=======================================================================

# DRIVER CODE

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects

# Will pull full report
STATE_DATA.each {|key, value| VirusPredictor.new(key, value[:population_density], value[:population], value[:region], value[:regional_spread]).virus_effects}
