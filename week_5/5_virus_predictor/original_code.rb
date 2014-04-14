require_relative 'state_data' #This is the data that will be tested by our class and methods. Without the data we have no code! 

class VirusPredictor

  def initialize(state_of_origin, population_density, population, region, regional_spread) #Create a method, call it initialize, give it an array, with properties of state, population density, population, region, and regional spread
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread #sets variables equal to their array value
  end #ends method

  def virus_effects # create a method, called virus_effects, containing variables that can be seen outside the "private" tag
    #HINT: What is the SCOPE of instance variables? #A variable's scope extends from the line it is declared until the end of the block it is contained in 
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
    

  end #ends method

  private  #When placed above "def virus_effects" no out put is given. Method is private and is not displayed.
  #what is this?  what happens if it were cut and pasted above the virus_effects method
  
  def predicted_deaths(population_density, population, state) #create a method, called predicted_deaths, give it an array of population density, population, and state
    if @population_density >= 200 #if population density is greater than or equal to 200 then set number of deaths equal to population time .4 rounded off to the lowest intiger
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150 #if population density is greater than or equal to 150 then set number of deaths equal to population time .3 rounded off to the lowest intiger
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100 #if population density is greater than or equal to 100 then set number of deaths equal to population time .2 rounded off to the lowest intiger
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50 #if population density is greater than or equal to 50 then set number of deaths equal to population time .1 rounded off to the lowest intiger
      number_of_deaths = (@population * 0.1).floor
    else #if population density is greater than 0 then set number of deaths equal to population time .5 rounded off to the lowest intiger
      number_of_deaths = (@population * 0.05).floor
    end #ends if/else

    print "#{@state} will lose #{number_of_deaths} people in this outbreak" #prints out what state will lose x number of people in the outbreak

  end #ends method

  def speed_of_spread(population_density, state) #in months takes the population density from each state and determines the speed of population loss.
    speed = 0.0

    if @population_density >= 200 # if population density is greater than or equal to 200 speed is added to 0.5.
      speed += 0.5
    elsif @population_density >= 150# if population density is greater than or equal to 150 speed is added to 1.
      speed += 1
    elsif @population_density >= 100 # if population density is greater than or equal to 100 speed is added to 1.5.
      speed += 1.5
    elsif @population_density >= 50# if population density is greater than or equal to 50 speed is added to 2.
      speed += 2
    else 
      speed += 2.5 
    end #ends if/else

    puts " and will spread across the state in #{speed} months.\n\n" # prints the speed of disease spread across states in terms of months. 

  end #ends method

end #ends class

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state, info|
  VirusPredictor.new(state, info[:population_density], info[:population], info[:region], info[:regional_spread]).virus_effects
end

#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
#alabama.virus_effects

#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
#jersey.virus_effects

#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
#california.virus_effects

#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
#alaska.virus_effects



# 3. Take a look at the `state_data` file. What is going on with this hash? What does it have in it? (HINT: There are two different syntax used for hashes here. What's the difference?)
# State_Data is a hash within a hash, with 4 values population density, population, region, and regional spread

# 5. New Feature: create a report for all 50 states, not just the 4 listed below.  Is there a DRY way of doing this?
# 6. Refactor the virus_effects method.  (HINT: what is the scope of instance variables?)
# 7. What is the purpose of "private". What happens if you move it elsewhere in the class?
# 8. Refactor the private methods predicted_deaths and speed_of_spread.  How can you make them more DRY?




