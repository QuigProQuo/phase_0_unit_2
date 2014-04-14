# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode
# Create a class, called die
# Create a method, give it a variable of sides
# Be sure to raise an argument if there is a wrong input
# create another method, set to be the number of sides
# create another method, to return a randomized character from the die


# Input: Die size
# Output: Randomized number from the die
# Steps:


# 3. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    if sides < 1
      raise ArgumentError.new("There are an incorrect number of sides to number")
    end
  end
  
  def sides
     @sides
  end
  
  def roll
     rand(1..@sides)
  end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
die = Die.new(10) 
puts die.sides == 10 
puts die.roll ==  1..10

die = Die.new(-1)
puts die.sides == ArgumentError
puts die.roll == ArgumentError





# 5. Reflection 

# This was one of those exercises that I was able to do with the help of Socraties. 
# In Die Class 1 & Die Class 2 I learned to use raise rather than return for ArgumentErroe
# I also wasn't sure as to whether or not to use rand or shuffle
# With the help of Socraties I was able to realize the need of the methods sides & roll
# this allows for you to edit your code effectively so that you can choose to use symbols or numbers.
