# exception

# begin
#   perform dangerous operation
# rescue => exception
#   do this if operation fails
#   example log error  
# end


names = ['bob','billy','joe',nil]

names.each do |name|
  begin
    puts "#{name}'s has #{name.length} letters"
  rescue
    puts "somethng went wrong!"
  end
end

puts "============"
# divide rb
def divide(number, divisor)
  begin
    answer = number / divisor
  rescue ZeroDivisionError => e
    puts e.message
  end
end

puts divide(4,0)
puts divide(14,7)

# comon built-in error types
# StandardError
# TypeError
# ArgumentError
# NoMethodError
# RuntimeError
# SystemCallError
# ZeroDivisionError
# RegexpError
# IOError
# EOFError
# ThreadError
# ScriptError
# SyntaxError
# LoadError
# NotImplementedError
# SecurityError