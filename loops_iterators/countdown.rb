# countdown

x = gets.chomp.to_i

# while x >= 0
#   puts x 
#   x -= 1
# end

# puts "Done!"


#until

until x < 0
  if x > 100
    puts "too high"
    break
  end
  puts x
  x -= 2
end

puts "done with until!"

