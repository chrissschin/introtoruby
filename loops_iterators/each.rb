# using each

names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']
x = 1
# if can fit on one line use curly braces
names.each { |name| puts name }

puts "===="

names.each do |name|
  puts "hello #{name}"
  x += 1
end

puts "====="


def doubler(start)
  puts start
  if start < 50
    doubler(start * 2) # passing in the extra argument 2
  end
end

doubler(1)

puts "======="


# fibonacci

def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

puts fibonacci(10)

