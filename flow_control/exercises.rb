# 2. Write a method that takes a string as argument. The method should return the all-caps version of the string, only if the string is longer than 10 characters. Example: change "hello world" to "HELLO WORLD". (Hint: Ruby's String class has a few methods that would be helpful. Check the Ruby Docs!)

def all_caps(str)
  if str.length < 10
    "needs longer str"
  else
    str.upcase
  end
end

puts all_caps("hello world asodfij")
puts all_caps('fa')


# 3. Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.

puts "give me a num from 0 - 100"
num = gets.chomp.to_i

if num <= 50
  puts "#{num} is between 0 - 50"
elsif num <= 100
  puts "#{num} is between 51 - 100"
end

# 4. What will each block of code below print to the screen? Write your answer on a piece of paper or in a text editor and then run each block of code to see if you were correct.

# 1. '4' == 4 ? puts("TRUE") : puts("FALSE")

## false

# 2. x = 2
#    if ((x * 3) / 2) == (4 + 4 - x - 3)
#      puts "Did you get it right?"
#    else
#      puts "Did you?"
#    end

## true

# 3. y = 9
#    x = 10
#    if (x + 1) <= (y)
#      puts "Alright."
#    elsif (x + 1) >= (y)
#      puts "Alright now!"
#    elsif (y + 1) == x
#      puts "ALRIGHT NOW!"
#    else
#      puts "Alrighty!"
#    end

##

#5.  Rewrite your program from exercise 3 using a case statement. Wrap the statement from exercise 3 in a method and wrap this new case statement in a method. Make sure they both still work.

def eval_num(num)
  case 
  when num <= 50
    puts "#{num} is between 0 - 50"
  when num <= 100
    puts "#{num} is between 51 - 100"
  else
    puts "#{num} is above 100"
  end
end

eval_num(50)

# test_code.rb:96: syntax error, unexpected end-of-input, expecting keyword_end
## expecting keyword : end to end the if statement



