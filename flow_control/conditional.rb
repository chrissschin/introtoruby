## order of precedence
# <=, <, >, >= - Comparison
# ==, != - Equality
# && - Logical AND
# || - Logical OR


puts "put a numer"
a = gets.chomp.to_i

if a == 3
  puts 'a is 3'
elsif a == 4
  puts 'a is 4'
else
  puts 'a is neither 3 or 4'
end


# ternary

true ? "this is true" : "this is now true"

# returns true
