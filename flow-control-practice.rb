# conditional.rb

=begin
puts "Put in number"
a = gets.chomp.to_i

puts "a is 3" if a == 3
puts "a is 4" if a == 4
puts "a is NOT 3" unless a == 3


# exercise 2
puts "Input string"
b = gets.chomp

# puts b.length     checked how to get string length
b.upcase! if b.length > 10

puts b
=end

# exercise 3
puts "Input a number between 1 and 100"
c = gets.chomp.to_i

unless c < 0 || c > 100
puts "Your number is between 0 and 50." if c >= 0 && c <=50
puts "Your number is between 51 and 100." if c >= 51 && c <=100
else
puts "You entered a number out of bounds."
end