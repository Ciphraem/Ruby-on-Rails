# array-practice.rb (using Launch School Ruby Arrays https://launchschool.com/books/ruby/read/arrays)

# exercise 1 ---------------------------------------
# Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.
arr = [1, 3, 5, 7, 9, 11]
number = 3

puts "Exercise 1"
puts "Array \"arr\" contains #{arr}."
puts "Does Array \"arr\" include the number #{number}?"
puts "Yes" if arr.include?(number)

# exercise 2 -------------------------------------
# What will the following programs return? What is the value of 'arr' after each?

puts "\nExercise 2"
# Program 1
arr1 = ["b", "a"]
arr1 = arr1.product(Array(1..3))
arr1.first.delete(arr1.first.last)
# First, arr1 becomes [[b,1,2,3], [a,1,2,3]]
# My answer: Deletes 3 from [b,1,2,3]
puts arr1 #checking
# Correct answer: My answer for Program 2.


# Program 2
arr2 = ["b", "a"]
arr2 = arr2.product ([Array(1..3)])
arr2.first.delete(arr2.first.last)
# First, arr2 = [[b,1], [b,2], [b,3], [a,1], [a,2], [a,3]]
# My answer: Deletes 1 from [b,1]
puts arr2 #checking
# Correct answer: arr2 = [[b,[1,2,3]], [a,[1,2,3]]] then last([1,2,3]) in first([b,[1,2,3]]) is deleted, leaving just [b]


# exercise 3 -------------------------------------
# How do you return the word "example" from the following array?
puts "\nExercise 3"
arr = [["test", "hello", "world"], ["example", "mem"]]
puts arr
puts "Select word: #{arr.last[0]}"
# other solutions: arr.last.first OR arr[1][0]


# exercise 4 -----------------------------------
# What does each method return in the following example?

puts "\nExercise 4"
arr = [15, 7, 18, 5, 12, 8, 5, 1]

arr.index(5)  #1
puts arr.index(5) # returns what index is the value 5

#arr.index[5] #2 returns error

arr[5]        #3 returns value of index 5
puts arr[5] if arr[5] == 8


# exercise 5 ---------------------------------
# What is the value of a, b, and c in the following program?

puts "\nExercise 5"
string = "Welcome to America!"
a = string[6]     # Answer is e
b = string[11]    # Answer is A
c = string[19]    # Answer is nil

puts "a is #{a}, b is #{b}, and c is #{c}. "


# exercise 6 ---------------------------------
# You run the following code...
# names = ['bob', 'joe', 'susan', 'margaret']
# names['margaret'] = 'jody'
# ...and get the following error message:
# TypeError: no implicit conversion of String into Integer
#   from (irb):2:in `[]='
#   from (irb):2
#   from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'

# What is the problem and how can it be fixed?

# The problem is that names['margaret'] is not valid. Parameter must be an index. Change to names[3] = 'jody'

puts "\nExercise 6 is in comments"


# exercise 7 ---------------------------------
# Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.

puts "\nExercise 7"
i = 0
arr7 = []

while i < 7 do    # makes array so I don't have to
  i += 1
  arr7.push(i*5)
end

puts arr7

arr7.each_with_index {|val, idx| puts "Index #{idx+1} is #{val}."}


# exersie 8 -------------------------------
# Write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original array by a value of 2. You should have two arrays at the end of this program. The original array and the new array you've created. Print both arrays to the screen using the p method instead of puts.

puts "\nExercise 8"

i = 0
arr8 =* (1..8)    # makes an array so I don't have to
puts arr8

arr8_new = arr8.map {|i| i+2}
p arr8
p arr8_new


puts "\nDONE!"