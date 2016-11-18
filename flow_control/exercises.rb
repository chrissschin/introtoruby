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
