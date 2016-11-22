# hash syntax
old_hash_syntax = {:name => 'bob'}
new_hash_syntax = {age: 10 }

person = {name: 'bob'}
# add to existing hash
person[:hair] = 'brown'

# delete
person.delete(:hair)

# retrieve
person[:name]

# merge
# destructive !
person.merge!(new_hash_syntax)
p person


###### hash iteration

person_1 = {name: 'bob', height: '6 ft', weight: '160 lbs', hair: 'brown'}

person_1.each do |key, value|
  puts "Bob's #{key} is #{value}"
end


##### optional_parameters.rb

#empty hash as parameter must assign it
def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else 
    puts "hi my name is #{name} and im #{options[:age]}"
  end
end

greeting("bob")
greeting("bob", {age: 50, city: 'carson'})
greeting("bob", age: 20, city: 'carson') # notice you dont have to use the braces


# note on hash keys

# irb :001 > {"height" => "6 ft"}     # string as key
# => {"height"=>"6 ft"}
# irb :002 > {["height"] => "6 ft"}   # array as key
# => {["height"]=>"6 ft"}
# irb :003 > {1 => "one"}             # integer as key
# => {1=>"one"}
# irb :004 > {45.324 => "forty-five point something"}  # float as key
# => {45.324=>"forty-five point something"}
# irb :005 > {{key: "key"} => "hash as a key"}  # hash as key
# => {{:key=>"key"}=>"hash as a key"}

##### common hash methods
# has_key?
example_hash = { "bob" => 42, "steve" => 20, "joe" => 25 }
p example_hash.has_key?("steve")


# select will return any key-value pairs that eval to true

puts example_hash.select do |key, val|
  key == "bob"
end


p example_hash.select { |key, val| (key == "bob") || (val == 20) }


# fetch method// pass a given key and it will return the value for that key if it exists. 

p example_hash.fetch("bob")


# to_a returns array version of hash // array of arrays

p example_hash.to_a


# keys and values// retrieve all keys or values
p example_hash.keys
p example_hash.values


example_hash.keys.each { |k| puts k }