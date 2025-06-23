# From The Odin Project Ruby on Rails Debugging Course

require 'pry-byebug'    # this line is requried to allow pry-byebug to run in file

def isogram?(string)
  original_length = string.length
  string_array = string.downcase.split('')
  
  unique_length = string_array.uniq.length
  original_length == unique_length
end

puts "Enter a word to check if it's an isogram:"
string = gets.chomp
p isogram?(string)

def yell_greeting(string)
  name = string
  
  #binding.pry         # makes a breakpoint in code

  name = name.upcase
  greeting = "WASSAP, #{name}!"
  puts greeting
end

yell_greeting("bob")

# From Launch School's Exception and Stack Traces at https://launchschool.com/books/ruby/read/more_stuff#readingstacktraces
def greet(person)
  puts "Hello, " + person
end

greet("John")
# greet(1)

def space_out_letters(person)
  return person.split("").join(" ")
end

def greet(person)
  return "H e l l o, " + space_out_letters(person)
end

def decorate_greeting(person)
  puts "" + greet(person) + ""
end

decorate_greeting("John")
decorate_greeting(1)