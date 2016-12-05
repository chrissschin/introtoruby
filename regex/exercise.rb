# 1.Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.



def check_lab(word) 
  if /lab/.match(word)
    puts "match"
  else
    puts "no match"
  end
end

check_lab("laboratory")
check_lab("Pants Labyrinth")
check_lab("elaborate")

p "---end 1---"
# 2.What will the following program print to the screen? What will it return?

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

# nothing will happen since the block isnt calling

# 3.What is exception handling and what problem does it solve?

# exception handling is catching an error that happens with and executed code. if there is an error, then the rescue block executes. great for checking where the bug occurs without exiting the program entirely


# 4.Modify the code in exercise 2 to make the block execute properly.

def execute_1(&block)
  block.calling
end

execute_1 { puts "Hello from inside the execute method!" }


#5.  Why does the following code...

# def execute(block)
#   block.call
# end

# execute { puts "Hello from inside the execute method!" }
# Give us the following error when we run it?

# block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
# from test.rb:5:in `<main>'

# &block missing from parameter



