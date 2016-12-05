var1 = Proc.new { |n| puts "hello #{n}" }


def hello_world(&proc)
  5.times { proc.call }
end

# power is telling it what to do on the fly the hello_world stays the same
hello_world { puts "hello world" }

p "========="

# talk = Proc.new do
#   puts "I am talking."
# end

# talk.call

# proc example

talk = Proc.new do |name|
  puts "i am talking to #{name}"
end

talk.call "bob"

def take_proc(proc)
  [1,2,3,4,5].each do |num|
    proc.call num
  end
end

proc = Proc.new do |num|
  puts "#{num}. Proc being called in the method!"
end

take_proc(proc)


