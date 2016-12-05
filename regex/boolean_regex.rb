
def has_a_b?(string)
  if string =~ /b/
    puts "we have a match!"
  else
    puts "no match"
  end
end

has_a_b?("boy")
has_a_b?("toy")

p "==========="
# =~ if we have a match

def has_a_a?(string)
  if /a/.match(string)
    puts "match"
  else
    puts "no match"
  end
end

has_a_a?("yo")
has_a_a?("aye")

p "both do the same thing! .match is using the matchData object"

# built in modules
# Math.sqrt(number) square the number
# Math::PI << constant

# What if you wanted to calculate what specific day July 4th occurred in 2008? You can use Ruby's built-in Time class.

#  t = Time.new(2008, 7, 4)
# => 2008-07-04 00:00:00 -0400
# irb :004 > t.monday?
# => false
# irb :005 > t.friday?
# => true


def test(b)
  b.map {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
test(a)
