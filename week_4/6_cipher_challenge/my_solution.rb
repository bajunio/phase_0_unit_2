# U2.W4: Cipher Challenge


# I worked on this challenge with: Brian Junio & Hethe Berg



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.



def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
  decoded_sentence = []
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c", 
            "h" => "d", 
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
            
  input.each do |x| # What is #each doing here? it is iterating through the input array created above
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
                         #  If not set to false, would be nil.  When true, if statement below passes and breaks out
    cipher.each_key do |y| # What is #each_key doing here? It will cycle through the cipher hash keys.
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y]
        found_match = true
        break  # Why is it breaking here? Breaks out of if/elsif and begins next iteration of cipher.each_key.
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
                                                                            # all symbols above create a "space" in the message
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do? Creates an array 0-9 and asks if it
                                                                                            # includes "x"
        decoded_sentence << x
        found_match = true
        break
      end 
    end
    if not found_match  # What is this looking for? Looking to see if the "x" does not match any of the cipher and if 
                                                  # not it is just going add it the way it is.
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. Searching for any digit and requiring at least 1.
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate... So it is going to take him down a proper
                                                           # notch and take that digit in his message divide by 100 and reapply to the 
                                                           # message for accuracy.
  end  
  return decoded_sentence # What is this returning?  returning the joined array      
end

# Your Refactored Solution

def north_korean_cipher(coded_message)
  space = ["@", "#", "$", "%", "^", "&", "*"]
  input = coded_message.downcase.split("") 
  decoded_sentence = []
  cipher = {"e" => "a",   
            "f" => "b",  
            "g" => "c", 
            "h" => "d", 
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
            
  input.each do |x| 
    found_match = false 
    cipher.each_key do |y| 
      if x == y 
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y]
        found_match = true
        break 
      elsif space.include?(x)
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) 
        decoded_sentence << x
        found_match = true
        break
      end 
    end
    if not found_match  
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
  if decoded_sentence.match(/\d+/) 
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } end  
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

# Reflection
 
=begin 

All I could think about was using this to remap my buddies keyboard.  lol  I recall some
friends in my youth (1996'ish) creating something that mapped every key over one space
to the right.  Super fun!

I feel inspired to write something that will translate passwords so that I can copy paste
my own scrambled passwords generated from a particual cipher.  That sounds like fun!

It was fun working with Berg on this challenge.  We got to know each other a bit better
and I look forward to starting camp with him in late June.  I feel we tag teamed well on
working through the commenting.  We were successful in stepping each other through some
of the logic that was going on.  It certainly is nice to have two minds working through
the same bit of code.

I thought about having a range ("a".."z") handle the creation of the hash table.  But
my partner and I both ran out of time.  

=end