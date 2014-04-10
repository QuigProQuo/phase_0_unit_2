# ACG_Solution.rb

# U2.W4: Accountability Group Creator!


# I worked on this challenge [by myself, with: ].
# With: Judy Jow

# 2. Pseudocode

# Define a method, with an array, 
# name the method create_groups, and the array array
# create a variable, set it to y= x-(x%4)
# call y extra_index, call x array.length
# create 3 variables, set them equal to array.shuffle
# call the variable unit_(1,2,3)_scrambled
# set variable unit_(1,2,3) equal to unit_(1,2,3)_scrambled


# shuffle the array of names
# divide the array of names into equal groups of 4
# unit1 is the group of 4s
# repeat the above twice to get the groups for unit 2 and unit 3 
# return the groups of 4


# Input Array of names
# Output: Multiple arrays of an array with randomly generated names for an accountability group
# Random Groups of 4
# Steps:


# 3. Initial Solution

def create_groups (array)
  extra_index = array.length - (array.length % 4)

  unit_1_scrambled = array.shuffle
  unit_2_scrambled = array.shuffle
  unit_3_scrambled = array.shuffle

  unit_1 = unit_1_scrambled[0...extra_index].each_slice(4).to_a
  unit_2 = unit_2_scrambled[0...extra_index].each_slice(4).to_a
  unit_3 = unit_3_scrambled[0...extra_index].each_slice(4).to_a
  
  for x in extra_index..array.length-1
    unit_1[x - extra_index] << unit_1_scrambled[x] 
    unit_2[x - extra_index] << unit_2_scrambled[x] 
    unit_3[x - extra_index] << unit_3_scrambled[x] 
  end
  
  return {
   
  } unit1: unit_1,
    unit2: unit_2, 
    unit3: unit_3
end  

    
array_cicadas = 
["Adeoye Jaiyeola","Brittaney Staton", "Chantelle Turnbull","Charu Sharma","Danielle Adams", "David Kerr","Dinesh Rai","Gregory Knud", 
"Ian Greenough", "Jake Huhn","Jason Matney","Jessica Tatham", "John Quigley","Judy Jow","Justin Lee", "Kai Prout","Ken Sin", 
  "Kennedy Bhagwandeen", "Kevin Zhou", "Lasse Sviland", "Natalie Baer", "Nick Giovacchini", "Samuel Arkless", "Timothy McClung"] #24 names


array = array_cicadas
put array

test = create_groups(array_cicadas)
test[0]
test[1]
test[2]


array_fiddler = [ 'Adam Godel ','Adrian Pask ','Brendan Scarano' ,'Christine Feaster' ,"Howard O'Leary ",'Insung Lee ','Jared Rader ','Johnathan Weisner' ,
  'Julia Himmel ','Justin Phelps ','Keaty Gross ','Kenneth Uy ','Lawrence Manfredi ','Neal Fennimore ','Payam Pakmanesh ','Philip London ','Ruben Osorio ',
  'Ryan Rebo ','Sahan Pitigala ','Shaun McGeever ','Timmy Huang ','Tyler Adams' ] #22 names

test = create_groups(array_fiddler)
test[0]
test[1]
test[2]


array_dragonflies = [ 'Andrew Larson','Andrew Younge' ,'Caroline Artz ','Dan Armstrong ','Elizabeth Cruz ','Elizabeth Kaplan ','Erik Olsen ','Fabi Castillo', 
  'George Amolsch', 'Guido Medina ','Jason Chodera ','Justin Stewart ','Kevin Kanhirun ','Lars Berg ','Matthew Berns', 'Matthew Didier','Michael Hamel ',
  'Milan Grubnic ','Mohammad Abdeljalil ','Nate Kandler ','Nicholas Eich ','Oliver Treadwell','Paige Crum ','Robb Hong ','HyungMin ','Santrece Ross ','Syed raza a. Jafri '] #27

test = create_groups(array_dragonflies)
test[0]
test[1]
test[2]



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

array_22 = (1..22).to_a #individisible by 4
array_20 = (1..20).to_a #divisible by 4

ans_array_20 = create_groups(array_20)
ans_array_22 = create_groups(array_22) 
puts ans_array_20.length == 3 # returns 3 units, representing the 3 units in phase 0 
puts ans_array_20[:unit1].last.length == 4 # accountability group in unit 1 has 4 people each
puts ans_array_20[:unit1][0] != ans_array_20[:unit2][0] # groups are different across units
puts ans_array_22[:unit1].first.length > 4 # accountability group in unit 1 has more than 4 people each
puts ans_array_22[:unit1][0] != ans_array_20[:unit2][0] # groups are different across units







# 5. Reflection 
# I'm writing this reflection mid assignment as I sit here stuck trying to write the driver code portion on my own.
# It has been a challenge trying to figure out where to start and where to go.
# Judy Jow and I started with the initial solution before writing the driver code.
# I found this method to be a bit easier than trying to write the driver code first, but I believe that is because I'm not quiet sure how to write the driver code.
# There really weren't any guides as to how to structure driver code.
# My first instinct was to look back at driver code written for past weeks assignments.
# I don't know if this was a good idea or not. 



