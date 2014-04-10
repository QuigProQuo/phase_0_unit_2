# U2.W4: Refactor Cipher Solution


# I worked on this challenge [by myself, with: ].


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence) #creates a method, with an array 
    alphabet = ('a'..'z').to_a # sets alphabet equal to the letters a to z in an array
    cipher = Hash[alphabet.zip(alphabet.rotate(4))] #creates a hash with the values of the alphabet +4
    spaces = ["@", "#", "$", "%", "^", "&", "*"] #replaces the spaces with symbols   
    original_sentence = sentence.downcase #makes the whole sentence downcase
    encoded_sentence = [] #creates an empty hash
    original_sentence.each_char do |element| #each character does...
      if cipher.include?(element)
        encoded_sentence << cipher[element] # puts the cipher element into the encoded_sentence
      elsif element == ' '
        encoded_sentence << spaces.sample # puts the spaces samples into the encoded_sentence
      else 
        encoded_sentence << element #puts the elements into the encoded_sentence
      end
     end
    
    return encoded_sentence.join #returns the encoded_sentence decoded!
end


# Questions:
# 1. What is the .to_a method doing?
# creating an array of the alphabet
# 2. How does the rotate method work? What does it work on?
#it reasigns the value of an array/hash by the specified value.
# 3. What is `each_char` doing?
#taking each character and doing a specified task
# 4. What does `sample` do?
#picks a sample amount to be tested
# 5. Are there any other methods you want to understand better?
#not from this assignment
# 6. Does this code look better or worse than your refactored solution
#Better
#    of the original cipher code? What's better? What's worse?
#this seems to be more clean cut and precise
# 7. Is this good code? What makes it good? What makes it bad?
#I would say this is good code. It is simple, to the point, and organized.


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")





# 5. Reflection 
#This was a great assignment to practice variables I don't know
# If given the opportunity I would like more assignments like this!
#I felt I learned a lot from just this one simple assignment
# Especially when it comes to ciphers now. 

