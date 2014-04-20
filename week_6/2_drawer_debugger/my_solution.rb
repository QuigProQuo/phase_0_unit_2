# U2.W6: Drawer Debugger


# I worked on this challenge [by myself, with: ].
# by myself


# 2. Original Code

class Drawer

	attr_reader :contents

# Are there any more methods needed in this class?
# No

	def initialize
		@contents = []
		@open = true
	end #end method

	def open
		@open = true
	end #end method

	def close
		@open = false
	end #end method

	def add_item(item)
		@contents << item
	end #end method

	def remove_item(item = @contents.pop) #what is `#pop` doing? #removing the last element from contents or nil in the case there is nothing
		@contents.delete(item)
	end #end method

	def dump  # what should this method return? #an empty drawer
		puts "Your drawer is empty."
	end #end method

	def view_contents
		puts "The drawer contains:"
		@contents.each {|silverware| puts "- " + silverware.type }
	end #end method
end #end class

class Silverware
	attr_reader :type

# Are there any more methods needed in this class? 
#yes, method clean_silverware
	def clean_silverware
		@clean = true
	end
	
	def initialize(type, clean = true)
		@type = type
		@clean = clean
	end

	def eat
		puts "eating with the #{type}"
		@clean = false
	end
end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return? #the contents of the drawer which should be empty 


fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
#fork.eat

#BONUS SECTION
#puts fork.clean

# DRIVER TESTS GO BELOW THIS LINE


drawer = Drawer.new
fork = Silverware.new("fork")
drawer.add_item(fork)
p drawer.remove_item(fork) == fork
p drawer.dump == []
p drawer.open == true
p drawer.close == false
p fork.eat == false




# 5. Reflection 
# There are always one or two errors that can trip you up for some extra time when trying to solve them.
# I found this assignment entertaining to say the least. 
# Extremely helpful in practicing and understanding the intent of the code someone else wrote. 
# I found the instructions to be self explanitory (Test in Terminal, fix the bug)
# Great practice on my own! 
