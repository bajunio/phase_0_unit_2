# U2.W4: Homework Cheater!


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

#essay_writer("Brian's Day", "Work", 2014, "Today was a great day for Brian.", male)

class Paper
	def initalize(title, topic, date, thesis_statement)
		@title = title
		@topic = topic
		@date = topic
		@thesis_statement = thesis_statement
		
	end

	def essay_writer(title, topic, date, thesis_statement)
		puts "#{title}"
		puts ""
		puts ""
		puts "#{thesis_statement} The #{topic} was doing well in #{date}."
	end
end

=begin
puts "You must have been truly desperate to come to me..."
puts "Lets get started, its obvious you have little time..."
puts "Title of reflection?"
title = gets.chomp
puts "Main topic?"
topic = gets.chomp
puts "Important date assoicated with topic?"
topic = gets.chomp
puts "Thesis statement?"
topic = gets.chomp
puts "If this is a person, male or female?"
pronoun = gets.chomp
=end

out = Paper.new.essay_writer("Brian's Day", "Work", 2014, "Today was a great day for Brian.")

# 4. Refactored Solution








# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 


