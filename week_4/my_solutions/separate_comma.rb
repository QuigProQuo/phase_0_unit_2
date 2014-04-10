# separate_comma.rb

# U2.W4: Separate Numbers with Commas (Solo Challenge_)

# Pseudocode:

# Create a method, call it separate_comma
# Give it an intiger as its input
# Convert that integer to a string
# For any number less than 999 output string
# For any number above 999 use commas where appropriate (Every 3 numbers)
# With an output of a comma-separated integer in string format


# Input: Integers
# Output: A string of the integers with commas in their respective places (every 3 numbers)
# Steps:
# define method, store as string, if <4 characters return, if >4 characters return with commas every 3 digits


# 3. Initial Solution

def separate_comma (intieger_1)
	string_1 = integer_1.to_s
	if string_1.length < 4
		return string
	elsif commas = (string_1.length - 1) /3
		for c in 1..commas
		x = (-4) * c
		string_1.insert(x,',')
		end
		return string
	end
end



# 4. Refactored Solution







# 5. Reflection 
# I'm finding that as I piece these problems apart into their very basic format I am able to write the code better sinse I understand what elements are needed to solve the problem.
# Writing good pseudocode is extremely helpful at understanding this step by step.
# I liked this challenge! It was fun trying to solve the elsif statement of my solution because I wasn't quiet sure how things would turn out.
# 
# 