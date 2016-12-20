# 1.Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.

  arr_1 = [1, 3, 5, 7, 9, 11]
  number = 3

  puts arr_1.include?(number)

#2.  What will the following programs return? What is value of arr after each?

  # arr = ["b", "a"]
  # arr = arr.product(Array(1..3))
  # puts arr.first.delete(arr.first.last)
  #creates a pairing of each item in arr with a the numbers 1-3 so [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
  # deletes the last item of the first array


  arr = ["b", "a"]
  arr = arr.product([Array(1..3)])
  # creates a pairing of each item of the array 
  # returns [["b",[1,2,3]],["a",[1,2,3]]]
  puts arr.first.delete(arr.first.last)
  # deletes the last array from the first array from the array arr.


# 3. How do you print the word "example" from the following array?
  arr_3 = [["test", "hello", "world"],["example", "mem"]]

  puts arr_3[1][0]

# 4. What does each method return in the following example?

  arr_4 = [15, 7, 18, 5, 12, 8, 5, 1]

  # 1. arr.index(5)
  puts arr_4.index(5)
  # returns first occurence of 5

  # 2. arr.index[5]
  # puts arr_4.index[5]
  # return undefined method

  # 3. arr[5]
  puts arr_4[5]
  # returns number from the 5th index

# 5. What is the value of a, b, and c in the following program?

  string = "Welcome to America!"
  a = string[6]
  # e
  b = string[11]
  # A
  c = string[19]
  d = string[20]
  # blank => nil if you go beyond the array

# 6. You run the following code...

  names = ['bob', 'joe', 'susan', 'margaret']
  # names['margaret'] = 'jody'

  # exercises.rb:60:in `[]=': no implicit conversion of String into Integer (TypeError)
  #         # from exercises.rb:60:in `<main>'

  # cant access using strings // must use intergers to access index

  names[3] = 'jody'

  puts names

# 7. Write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original array by a value of 2. You should have two arrays at the end of this program, The original array and the new array you've created. Print both arrays to the screen using the p method instead of puts.

  old_arr = [1,2,3,4,5,6]

  new_arr = old_arr.map { |num| num + 2 }

  p old_arr
  p new_arr

