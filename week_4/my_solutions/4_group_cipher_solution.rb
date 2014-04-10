# U2.W4: Cipher Challenge


# I worked on this challenge with 
# Adeoye Jaiyeola


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.



def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # this seperates each character in the message, downcases them, and place them into an array..
  decoded_sentence = [] #this creates an empty array
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c",   # Pros: Easy when accounting for 1 shift
            "h" => "d",   # Cons: If there was more than 1 shift you would have to create a new Hash
            "i" => "e", 
            "j" => "f",       
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
            
  input.each do |x| # What is #each doing here? #each is allowing us to call each given block once passing the key value pair as a parameter and telling us to do x which at the moment is undefined
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?This line creates a new variable called found_match. False is only a default. As the program keeps running, found_match will change to true if the conditions are met for it to be true.
    cipher.each_key do |y| # What is #each_key doing here? Calls block once for each key in the hash passing the key as a parameter
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really? X is coming from our original input where as Y is coming form our cipher. We are comparing the original input to the cipher.
        puts "I am comparing x and y. X is #{x} and Y is #{y}." #tells us that 2 letters are being compared.
        decoded_sentence << cipher[y] #append y to array decoded_sentence
        found_match = true #automatically changes the  found_match from false to true.
        break  # Why is it breaking here? Signals that we are moving from if x == y to other possibilities of x
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing? Best guest.... checking to see if x is equal to any of the strings listed
        decoded_sentence << " " # adds a space to decoded_sentence if above if true
        found_match = true #signifies that a match was found
        break #signifies a break from the above scenario
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do? checking to see if x contains the numbers 0 to 9
        decoded_sentence << x #adds the number to decoded_sentence if x contains a number
        found_match = true#signifies that a match was found
        break#signifies a break from the above scenario
      end #ends the if-else statements
    end #ends our cipher.each_key
    if not found_match  # What is this looking for? # checking to see if no match was found
      decoded_sentence << x #if no match is found, the input is appended to decode_sentence as it is
    end  #ends our if not statement
  end#ends the input.each_key
  decoded_sentence = decoded_sentence.join("") #joins all elements in the decoded_sentence array with space between each. Turns into string.
 
  if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. # checks to see if there are one or more digits in decoded_sentence
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...#takes the digit, turns it into an integer, and divides by 100
  end  
  return decoded_sentence # What is this returning? Our finished product of a decoded North Korean Cipher!        
end

# Your Refactored Solution
def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") 
  decoded_sentence = []
    letters = ("a".."z").to_a
  cipher = letters.rotate(-4) 
    input.each do |x|
    is_match = false
    cipher.each_key do |y|
      if x == y 
      puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y] 
        is_match = true 
        break  
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" 
        decoded_sentence << " " 
        is_match = true 
        break 
      elsif (0..9).to_a.include?(x) 
        decoded_sentence << x
        is_match = true
        break
      end 
    end 
    if not is_match  
      decoded_sentence << x 
    end  
  end
  decoded_sentence = decoded_sentence.join("") 
  if decoded_sentence.match(/\d+/) 
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } 
  end  
  return decoded_sentence         
end



# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")

 
 