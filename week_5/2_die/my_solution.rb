# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode
# Create a class, called die
# Create a method, give it a variable of labels
# Be sure to raise an argument if there is a wrong input
# create another method, set to be the number of sides
# create another method, to return a randomized character from the die

# Input: charcters for the die
# Output: randomized character from the die
 

# 3. Initial Solution

class Die
  def initialize(labels)
    @labels = labels
    if labels == []
      raise ArgumentError.new ("What do you think you are doing?")
    end
  end

  def sides
    @labels.length
  end

  def roll
    @labels.shuffle[0]
  end
end

# 4. Refactored Solution

# 1. DRIVER TESTS GO BELOW THIS LINE

die = Die.new(['A','B','C', 'D', 'E', 'F', 'G','H']) 
puts die.sides == 8
puts die.roll == ('C') || ('B') || ('D') || ('A') || ('E')

# 5. Reflection 

# This was one of those exercises that I was able to do with the help of Socraties. 
# In Die Class 1 & Die Class 2 I learned to use raise rather than return for ArgumentErroe
# I also wasn't sure as to whether or not to use rand or shuffle
# With the help of Socraties I was able to realize the need of the methods sides & roll
# this allows for you to edit your code effectively so that you can choose to use symbols or numbers.
