# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: 

# Your Names
# 1) Steven Leu
# 2) Brian Junio

# Our Refactored Solution

def bakery_num(num_of_people, fav_food) 
# create hash of foods (keys: food, values: number of people fed) and initialize quantities of each food
my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}
pie_qty = 0
cake_qty = 0
cookie_qty = 0
# did away with iteration, combined it all with a Hash#has_key? method.
raise ArgumentError.new("You can't make that food") unless my_list.has_key?(fav_food)
# fav_food_qty will be assigned 8, 6, or 1
fav_food_qty = my_list[fav_food]
# did away with the while loop, just went with pointers to the hash keys via if / else
  if num_of_people % fav_food_qty == 0
    return "You need to make #{num_of_people / fav_food_qty} #{fav_food}(s)."
  else
    if fav_food == "pie"
      pie_qty = num_of_people / my_list["pie"]
      num_of_people = num_of_people % my_list["pie"]
      cake_qty = num_of_people / my_list["cake"]
      cookie_qty = num_of_people % my_list["cake"]
    else
      cake_qty = num_of_people / my_list["cake"]
      cookie_qty = num_of_people % my_list["cake"]
    end
  return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
  end
end

#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."

# You SHOULD change this driver code. Why? Because it doesn't make sense.
# Changed!
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!

# Raises AE Error
p bakery_num(3, "apples") # this will raise an ArgumentError


#  Reflection 
=begin 

It was fun to work with Steven on this challenge.  He's very focused and 
we were able to apply some very cool logic together.  

Our refactored solution was able to meet all of the objectives laid out
in the challenge.  Its becoming more and more fun as we are able to work
real-life instances into objects in code.  

I feel like the logic we are using to sort the priority is messy...  We
dug into this challenge and found this a good stopping point.  

=end