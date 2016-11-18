#1. Write a program that prints a greeting message. This program should contain a method called greeting that takes a name as its parameter and returns a string.

def greeting(name)
  'Hi ' + name.to_s
end

puts greeting('chris')

# 3.  Write a program that includes a method called multiply that takes two arguments and returns the product of the two numbers.

def multiply(a, b)
  a * b
end

puts multiply(1,4)


# 4. What will the following code print to the screen?

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

# nothing

# 6. What does the following error message tell you?
# ArgumentError: wrong number of arguments (1 for 2)
#   from (irb):1:in `calculate_product'
#   from (irb):4
#   from /Users/username/.rvm/rubies/r

### not enough arguments in method 'calculate_product'


