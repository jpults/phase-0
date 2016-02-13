# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
# require_relative 'state_data' #This retrieves a file or variable from another file in our directory. It differs from require in that it only searches the current directory, rather than searching through the whole computer.



class VirusPredictor
#Takes one states statistics and assigns it to instance variables.
  def initialize(state_of_origin, population_density, population) 
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #This method will run two of our other methods, predicting the deaths, and speed of spread.
  
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

   private # all methods that follow will be made private: not accessible for outside objects
  
  #Takes the population density and population. Based on the density, it will multiply the population of the state by a different factor, rounding it to the next lowest integer. (Half a person can't die.) Then prints out this result.

  def predicted_deaths
    # predicted deaths is solely based on population density
    
    increment_factor = (0.1 * (@population_density/50))
    number_of_deaths = (@population * increment_factor).floor
    
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Takes the population density, and based on it, prints the speed at which the disease will spread across the state in months. 
  def speed_of_spread 
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0 #in months
    
    if @population_density >= 200
      increment = 200
    else 
      increment = @population_density
    end  
    
    speed = (2.5 - (0.5 * (increment/50)))
  

#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects




STATE_DATA.each do |key, value| 

state = VirusPredictor.new(key, value[:population_density], value[:population] )

state.virus_effects  
  
end




#=======================================================================
# Reflection Section