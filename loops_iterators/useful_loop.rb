# useful loop

# i = 0
# loop do
#   i += 1
#   puts i
#   break
# end


# conditional loop

# i = 0
# loop do
#   i += 2
#   puts i
#   if i == 10
#     break
#   end
# end

# using next

i = 0
loop do 
  i += 2
  if i == 4
    next
  end
  puts i
  if i == 10
    break
  end
end