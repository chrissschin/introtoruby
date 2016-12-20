# conditional_loop_with_next

x = 0

while x <= 10
  if x == 3
    x += 1
    next
  elsif x.odd?
    puts x
  end
  x += 1
end

puts "========="

y = 0

while y <= 10
  if y == 7
    break
  elsif y.odd?
    puts y
  end
  y += 1
end

puts "========" 


