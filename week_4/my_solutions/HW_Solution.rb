# HW_Solution.rb

# U2.W4:


# I worked on this challenge [by myself, with: ].
# With: Myself

# 2. Pseudocode
# create a method
# with an array variable
# assign it properties of title, person, gender, place, topic, date, thesis
# use if/else statements to return varrying sentences


# Input: A method, with an array, that includes title, person, gender, place, topic, date, thesis
# Output: Mad-Lib like answer to a fake homework assignment
# Steps:


# 3. Initial Solution

def essay_writer(title, person, gender, place, topic, date, thesis)
  if (gender == "male")
  	return
  		"#{person} isn't really a #{title}. They wish they were born in #{place} but not as a #{gender}. The topic of their thesis was #{topic}, writen on #{date}, while drunk, and this is what they came up with #{thesis}"
  elsif 
  	return
   		"#{person} is really a #{title}. They were born in #{place} as a #{gender}. The topic of their thesis was #{topic}, writen on #{date}, this is what they came up with #{thesis}"
  end 
end 

# 4. Refactored Solution





# 1. DRIVER TESTS GO BELOW THIS LINE

puts essay_writer = (" Speaker of the House ", " John Boehner ", " Male ", " Washington D.C. ", "Politics", "1/1/55", "World Peace is inevitable. I will see it at one point in my life time...")



# 5. Reflection 
# Thought this was a fairly simple assignment.
# It was a good assignment to do on my own.
# I felt this was an assignment that could have drifted extremely far from the guidelines and thought best to keep it simple.
# It could have turned into an even longer assignment had I done what my immagination was telling me.

