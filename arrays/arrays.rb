# methods
# .push()
# .pop()
# .delete_at(index)
# .uniq


arr = [1,2,3,4,5,5,5,5,5,5,6,7]

puts arr.uniq

# adding ! will permanently change the arr

puts arr.uniq!

puts "new arr==="
puts arr
puts "========"

# selective arr

# arr_1 = [1, 2, 3, 4, 5, 6]

# [1, 2, 3, 4, 5, 6].select { |num|  num > 5 }
  
# puts arr_1

# puts [1,2,3,4,5].select { |num|  num.even?  }

# (1..10).select { |x| x.even? }

a = ['a','v','b']

puts a.select { |x| "a" == x }

b = [1,2,4,5]

puts b.select { |x| x > 2}


puts "im a string now #{b}"

# include? returns boolean
 puts b.include?(2)

 # flatten creates a one dimensional array
b_2 = [1,3,5,[1,2,4],[4,6,7]]
b_3 = [1,3,5,[1,2,4],[4,6,7]]

puts b_2.flatten

puts "===="

b_3

another_array = [1, 2, 3, 4,6,10,5,3,2]

another_array.each_index { |i| puts "im index #{i}" }

another_array.each_with_index { |val, ind| puts "ind #{ind} and value = #{val}" }
puts"===="
puts another_array.sort # not destructive
puts "====="
puts another_array

puts another_array.each