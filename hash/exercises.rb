# 1.  Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select method to gather only immediate family members' names into a new array.

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immediate_fam = family.select { |key| key == :sisters || key == :brothers}
immediate_fam_flattened = immediate_fam.values.flatten
# p immediate_fam_flattened

# access strings keys like "key" regular keys like :key



#2.  Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.

# h1 = { "a" => 100, "b" => 200 }
# h2 = { "b" => 254, "c" => 300 }
# h1.merge(h2)   #=> {"a"=>100, "b"=>254, "c"=>300}
# p h1.merge(h2){|key, oldval, newval| newval - oldval}
# p h1

h3 = { "a" => 100, "b" => 200, "c" => 400, "e" => 600 }
h4 = { "a" => 105, "b" => 205, "c" => 405, "d" => 500}
# p h3.merge(h4) { |key, old_val, new_val| new_val - old_val }
p h3.merge(h4) # takes new value and overides them

puts "====="

h5 = { "a" => 100, "b" => 200, "c" => 400, "e" => "505"}
h6 = { "a" => 105, "b" => 205, "c" => 405, "d" => "500"}
# p h5.merge!(h6) { |key, old_val, new_val| new_val - old_val }
p h5.merge!(h6) 

p h5

# merge! is destructive so it overrides existing data

# 4. Given the following expression, how would you access the name of the person?
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

p person[:name]


# 5. What method could you use to find out if a Hash contains a specific value in it? Write a program to demonstrate this use.
## hash.has_value?('value to pass')

# 6. Given the array...
puts "======= start 6. ======"
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

# Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in them but in a different order. Your output should look something like this:

# ["demo", "dome", "mode"]
# ["neon", "none"]
# (etc)

result = {}

# iterate through each
words.each do | word |
  # making a key by sorting the word word sorted = tied = deit
  # storing the sorted word as key result = {  }
  key =  word.split('').sort.join
  # if result has the key push the string ["word"] into the current key
  if result.has_key?(key)
    result[key].push(word)
  else
    #set a new key which is the sorted word = to the current word 
    result[key] = [word]
  end
end

puts result

result.each do | key, value|
  p '===='
  p value
end


# 7. Given the following code...

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}
# What's the difference between the two hashes that were created?

# my_hash uses x: as the key
# my_hash2 is using the x variable as the key which is a string

# 8. If you see this error, what do you suspect is the most likely problem?

# NoMethodError: undefined method `keys' for Array
# A. We're missing keys in an array variable.

# B. There is no method called keys for Array objects.

# C. keys is an Array object, but it hasn't been defined yet.

# D. There's an array of strings, and we're trying to get the string keys out of the array, but it doesn't exist.

# B is the answer








