# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1)John Quigley
# 2)C.J. Jameson

 # This is the file you should end up editing. 
 
def bakery_num(num_of_people, fav_food) #Creates a method, containing two variables
  servings = {"pie" => 8, "cake" => 6, "cookie" => 1} #Create a hash, containing pie, cake, cookie
  #we are thinking about making the below a hash to keep the output quantities better organized bakery_quantity = {"pie" => 0
  #sort the hash, organized highest to lowest
  pie_qty = 0
  cake_qty = 0
  cookie_qty = 0  #intially set to quantity to zero
  
  has_fave = false  #creates new variable, has_fave, which is equal to false

  servings.each_key do |k|  #loops through servings hash using the each_key method
    if k == fav_food
      has_fave = true
      #removed: fav_food = k
    end
  end
  if has_fave == false
    raise ArgumentError.new("You can't make that food")
  else
    #fav_food_qty = servings.values_at(fav_food)[0] #fav_food_qty is set equal to servings 
    if num_of_people % servings[fav_food] == 0 #if there's no remainder when dividing the baked goods up evenly
      num_of_food = num_of_people / servings[fav_food]
      return "You need to make #{num_of_food} #{fav_food}(s)." #only need to return one pie/cake/cookie because it's all even
    else #num_of_people % fav_food_qty != 0 redundant with previous condition
      
    if num_of_people / servings[fav_food] > 0
      fav_food_qty = num_of_people / servings[fav_food] #we're taking our favorite food, and getting the most amount that we can baked
      case fav_food
        when "pie"
          pie_qty = fav_food_qty #assign fav_food_qty to pie's quantity
        when "cake"
          cake_qty = fav_food_qty
        when "cookies"
          cookies_qty = fav_food_qty
      end
      num_of_people = num_of_people % servings[fav_food]
      #loop through the hash, if number is less than num of people, return lesser item.
      while num_of_people > 0 #still could refactor this section more
        if num_of_people >= servings["pie"]
            pie_qty += num_of_people / servings["pie"]
            num_of_people = num_of_people % servings["pie"]
        elsif num_of_people >= servings["cake"]
            cake_qty += num_of_people / servings["cake"]
            num_of_people = num_of_people % servings["cake"]
        else
            cookie_qty += num_of_people / servings["cookie"]
            num_of_people = num_of_people % servings["cookie"]
        end
      end
    end
    return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
  end
end
 

#-----------------------------------------------------------------------------------------------------
#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!
 

 #Refelction:
 # This GPS I had the opportunity to work with a more advanced programer than myself. 
 # This was both good and bad for myself.
 # The good was that I was able to learn a lot during my GPS with CJ he was able to effectively communicate his vision
 # for the code and that made him a really good navigator.
 # The bad was that I also felt like I wasn't a good match to pair with him.
 # It felt like it was more of a CJ & Instructor vs myself type of session.
 # Not that this was bad but it didn't truly let me showcase the information I knew but rather all the information I still needed to know.
 # Never the less is was an education GPS session and I am glad I had the opportunity to work with CJ
 # We dicided to keep most of the code as is but with a few structural and organizational changes.
 # I went on to suggest that I thought we would be able to put lines 13, 14, 15 into a hash
 #so that we could rewrite the code in lines 46-56.
 # This idea was going to cost us time that we didn't have at the moment and weren't able to implemement it
 # we did note though that any future work to be done on this piece could start there. 

 

