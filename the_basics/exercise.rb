# 1. Add two strings together that, when concatenated, return your first and last name as your full name in one string.

"chris" + "chin"

# 2. Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the:

thousands = 1234 / 1000
hundreds = 1234 % 1000 / 100
tens = 1234 % 100 / 10
ones =  1234 % 10 / 1

# 3. Write a program that uses a hash to store a list of movie titles with the year they came out. Then use the puts command to make your program print out the year of each movie to the screen. The output for your program should look something like this.

movies = {
  star_wars: 2000,
  tire: 2001,
  garlic_fries: 2003,
  battle_royale: 2002
}

puts movies[:star_wars]
puts movies[:battle_royale]

# 4. Use the dates from the previous example and store them in an array. Then make your program output the same thing as exercise 3.

movie_dates = [2000, 2001, 2003, 2002]
puts movie_dates[0]


# 5. Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.

puts 5 * 4 * 3 * 2 * 1

# 6.  Write a program that calculates the squares of 3 float numbers of your choosing and outputs the result to the screen.

puts 2.3 * 2.3
puts 3.55 * 3.55

# 7.  What does the following error message tell you?

# SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
  # from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'

  # expected a } instead of a ).
