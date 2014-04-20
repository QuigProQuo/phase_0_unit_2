# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].
# Danielle Adams
# John Quigley


# 2. Review the simple assert statement

# def assert # create a method called assert, to raise an argument unless it is set to it's tested value
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# assert { name == "bettysue" }
# Define 'assert' method with no arguments
#   If yield
#     Return block value
#   If does not yield
#     Return 'Assertion failed!' alert

#assert { name == "billybob" }
#Create a method called assert
# Raise an argument, test for yield
# If it doesn't yield, return raised argument
# If yields, return tested value


# 3. Copy your selected challenge here
# Danielle's code - Week 5, Challenge 4, Part 2

  $boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]

  def get_row(row)
    $boggle_board[row] # Created global array to use for methods
  end

  p get_row(1)

  # Driver code #1: Verifies 'get_row' takes 1 argument.
  # p method(:get_row).arity == 1

  # Driver code #2: Verifies that only listed rows are returned.
  # p get_row(5) == nil



# 4. Convert your driver test code from that challenge into Assert Statements

#Driver code #1
def assert
  raise "Assertion failed!" unless yield
end

p argument = 1
p assert { argument == method(:get_row).arity }

#Driver code #2
def assert
  raise "Assertion failed!" unless yield
end

p row = nil
p assert { row == get_row(5) }


# 5. Reflection
# Pairing with Danielle for this assignment was a great matchup
# I felt that we both learned a lot working together
# Rather then being paired with someone who knew the solution right away bot Danielle and I learned how to do this together.
# I found ussing assert methods as driver code could be as easy as boolean statements if done correctly
# This was a great intro challenge for myself to learn how to write driver code in this way
# I can definetly see myself using this method more often in future challenges!
