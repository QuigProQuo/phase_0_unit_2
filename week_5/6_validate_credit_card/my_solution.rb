# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode
#create a class for creditcard
#create a method, used to define the card number
#have the method raise an arugment when the wrong number is entered
#create



# Input: Credit Card Number
# Output: Verified number



# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard
	def card_number (numbers)
		@numbers = numbers
		raise ArgumentError.new ("Wrong Number") if numbers.to_s.length != 16
	end # end method card_number

	def verification
		card = numbers.inspect.split('')
		x = 0
		while x < 16
			card[x] = card[x].to_i * 2
			x += 2
	end # end method verification

	card = card.join.split('')
	total = card.map {|x| x.to_i}.inject(:+)
	if total % 10 == 0
		return true
	else
		return false
	end #end if/else
  end   
end #end class CreditCard


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE




# 5. Reflection 
# This was a test of my knowledge to date. 
# I defintely struggled with this one! 
# I feel that this assignment showed me that I need to write better pseudocode
# because I wasn't quiet sure how to implement my pseudocode once I wrote it.
# I just ended up trying to solve the problem and then making sure my pseudocode matched (which is wrong)
# I think I also had trouble because I tried to do this in socrates.