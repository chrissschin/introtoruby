#1. What does the each method in the following program return after it is finished executing?

# x = [1, 2, 3, 4, 5]
# x.each do |a|
#   a + 1
# end

### output = add 1 to each item

# 2. Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get info from the user.

# ans = ""
# while ans != "STOP" do
#   puts "type STOP to stop"
#   ans = gets.chomp
# end
  

#3.  Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.

items = ['item 1','item 2', 'item 3']

items.each_with_index do |item, index|
  puts "#{index + 1} #{item}"
end

puts "======="
puts "======="



puts"one line version"


items.each_with_index { |item, index| puts "#{index} for #{item}"}


def down_to_zero(num) 
  if num == 0
    puts num
  else
    puts num
    down_to_zero(num - 1)
  end
end

down_to_zero(5)
puts "====="
down_to_zero(15)
