# 1. Write a program called name.rb that asks the user to type in their name and then prints out a greeting message with their name included.

puts "what is your first name?"
first = gets.chomp
puts "last name?"
last = gets.chomp
puts "hi " + first + " " +last

# 3.Add another section onto name.rb that prints the name of the user 10 times. You must do this without explicitly writing the puts method 10 times in a row. Hint: you can use the times method to do something repeatedly.

10.times do
  puts first
end

# 4. Modify name.rb again so that it first asks the user for their first name, saves it into a variable, and then does the same for the last name. Then outputs their full name all at once.


# 5Look at the following programs...
#
# x = 0
# 3.times do
#   x += 1
# end
# puts x
# and...
#
# y = 0
# 3.times do
#   y += 1
#   x = y
# end
# puts x
# What does x print to the screen in each case? Do they both give errors? Are the errors different? Why?

#### 1st case prints x once after 3 times are done
#### 2nd case throws error because variable is inside block



# 6.What does the following error message tell you?

# NameError: undefined local variable or method `shoes' for main:Object
  # from (irb):3
  # from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'

  #### cant find variable or method called shoes. either its outside of its scope form where its called or its not defined.
