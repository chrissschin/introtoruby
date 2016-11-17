def add_three(number)
  number + 3
end

returned_value = add_three(4)
puts returned_value


def add_three(num)
  new_value = num + 3
  puts new_value
  return new_value
end

add_three(2).times { puts 'print 5 times' }


def add(a, b)
  a + b
end

def subtract(a,b)
  a - b
end

def multiply(a,b)
  a * b
end

puts multiply(subtract(25,10), add(5,2))
