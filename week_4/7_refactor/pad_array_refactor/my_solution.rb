# U2.W4: Review and Refactor: Pad an Array

# I worked on this challenge by myself.



# 1. First Person's solution I liked
#    What I learned from this solution
=begin 
Well, it started me down the train of not doing a concat
and instead using a push method. Also, got me to lookup
#dup.  
=end
# Copy solution here:

class Array
  def pad!(n, v = nil)
  	(n - self.length).times {self.push(v)}
  	self
  end
  def pad(n, v = nil)
  	self.dup.pad!(n, v)
  end
end

# 2. Second Person's solution I liked
#    What I learned from this solution
=begin 
Much like in the last example, using push and also I wanted
to point out how both of them set a default assignment of 
nil to the value right from the argument.  Slick!
=end
# Copy solution here:

class Array

def pad!(minimum, value=nil)
	x = minimum - self.count
    x.times do
      self.push(value)
    end
    self
end
end

def pad(minimum, value=nil)
  arr = []
  self.each do |x|
    arr.push(x)
  end
  x = minimum - arr.count
  x.times do
    arr.push(value)
  end
  arr
end

end



# 3. My original solution:


class Array

	def pad(*args)
		raise ArgumentError, "Too many arguments!" if args.length > 2
		@number, @default_push = *args

		if self.size < @number
			new_array = Array.new((@number - self.size), @default_push)
			self.concat(new_array)
		else
			self
		end
	end

	def pad!(*args)
		raise ArgumentError, "Too many arguments!" if args.length > 2
		@number, @default_push = *args

		if self.size < @number
			new_array = Array.new((@number - self.size), @default_push)
			self.concat!(new_array)
		else
			self
		end
	end
end

# 4. My refactored solution:

def pad!(minimum, value=nil)
  (minimum - self.count).times {self.push(value)}    
  self
end


def pad(minimum, value=nil)
  arr = []
  self.each {|x| arr.push(x)}
  (minimum - arr.count).times {arr.push(value)}
  arr
end

end



# 5. Reflection
=begin 
I feel like I ripped off example #2's solution.  I did a minor bit of refactoring
to polish the deliver, but the logic was really solid.  A rule that I've been trying
to go by when researching how to solve particular challenges has been if I use
code that I find online, I should be able to break it down and fully understand every
last working piece of it.  

Folks started to tell me that as a programmer I would be reading far more code
than I would be writing and it didn't seem to make sense.  The more I dive into
this scene, the more I'm begining to see the merrit in that.  So much can be gained
by digging into someone else's mind through their code.  
=end