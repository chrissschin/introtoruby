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
hash_arr_sample = [{:a => "val"}, {:a => "val"}]

p "====end 10====="


#11. Look at several Rails/Ruby online API sources and say which one you like best and why.

# just looked into the ruby-doc.org because its the core programming language, rather than looking into other frameworks

#12. 

# Given the following data structures. Write a program that moves the information from the array into the empty hash that applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

joe = contacts["Joe Smith"]
sally = contacts["Sally Johnson"]

joe[:email] = contact_data[0][0]
joe[:street] = contact_data[0][1]
joe[:number] = contact_data[0][2]
sally[:email] = contact_data[1][0]
sally[:street] = contact_data[1][1]
sally[:number] = contact_data[1][2]

puts contacts


# 13. Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?

puts joe[:email]
puts sally[:number]

#14 In exercise 12, we manually set the contacts hash values one by one. Now, programmatically loop or iterate over the contacts hash from exercise 12, and populate the associated data from the contact_data array. Hint: you will probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be the Array shift and first methods.

# Note that this exercise is only concerned with dealing with 1 entry in the contacts hash, like this:

contact_data_1 = ["joe@email.com", "123 Main st.", "555-123-4567"]

contacts_1 = {"Joe Smith" => {}} #{email: "joe@email.com"}

fields = [:email, :street, :phone]

#loop through the key and hash
contacts_1.each do |key, hash|
  #loop through fields 
  fields.each do |field|
    #create matching key with curent hash from current field. assigned by pulling first index of contact_data_1
    hash[field] = contact_data_1.shift
  end
end

puts contacts_1

puts "====end 14===="
# 15 Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.

arr_1 = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr_1.delete_if do |a|
  a.start_with?("s","w")
end
puts arr_1



# Take the following array:

arrrr = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
# and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method.

arrrr = arrrr.map { |item| item.split }

p arrrr.flatten


#17. What will the following program output? 

# initially it hought it was not the same
# it actually is the same because its just different syntax. some have old way, some have newer way
# order of key is not important only in arrays

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end


