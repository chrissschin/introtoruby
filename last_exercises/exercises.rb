#1. Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

orig_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each do |num|
  puts "im number #{num}"
end

p "=====end 1====="

# 2.Same as above, but only print out values greater than 5.

[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each do |num|
  if num > 5
    puts "im num #{num}"
  end
end

p "===== end 2====="
# 3. Now, using the same array from #2, use the select method to extract all odd numbers into a new array.
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].select do |num|
  if num % 2 != 0
    puts "odd number #{num}"
  end
end

p "===== end 3====="
# 4. Append "11" to the end of the original array. Prepend "0" to the beginning.

orig_array.push(11)
orig_array.unshift(0)
puts orig_array

p "=====end 4====="


#5. Get rid of "11". And append a "3".

orig_array.push(3)
orig_array.delete(11)
puts orig_array

p "===== end 5 ====="
# 6.Get rid of duplicates without specifically removing any one value.

unique_array = orig_array.uniq
puts unique_array
p "=====end 6 ======"


# 7. What's the major difference between an Array and a Hash?
# array is a collection of items
# hash stores a key and value

p "===== end 7====="
# 8.Create a Hash using both Ruby syntax styles.

hashy_1 = {:key => "val"}
hashy_2 = {key: "val"}
also_hash = { "key_1": "val" }

p "end 8 ====="

# 9.Suppose you have a hash h = {a:1, b:2, c:3, d:4}

# 1. Get the value of key `:b`.

# 2. Add to this hash the key:value pair `{e:5}`

# 3. Remove all key:value pairs whose value is less than 3.5

h = {a:1, b:2, c:3, d:4}
puts h[:b]

h[:e] = 5
puts h


h.delete_if do |key,val|
  val < 3.5
end

p "====end 9==="

# 10.Can hash values be arrays? Can you have an array of hashes? (give examples)
# yes hashes can be in arrays and hashes can store arrays

hash_with_arr = {a: ["uno","dos","tres"]}
hash_arr_sample = [{:a: "val"}, {:a: "val"}]







