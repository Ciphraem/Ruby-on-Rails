# methods-practice.rb (using "Launch School Methods at https://launchschool.com/books/ruby/read/methods" 


# MAKING METHODS
def say (words)         # 'say' is METHOD, 'words' is PARAMETER
    puts words
end

say ("MaAKING METHODS")
say("hello")            # 'say' is METHOD, 'hello' is ARGUMENT
say('hi')
say('how are you')
say('I\'m fine')

# DEFAULT PARAMETERS
def say_Default(words='hello')
    puts words + '.'
end

puts "\n DEFAULT PARAMETERS"                       # makes new line
say_Default()
say_Default('hi')
say_Default('how are you')
say_Default('I\'m fine')

# METHOD DEFINITION AND LOCAL VARIABLE SCOPE
a = 5

def some_method
    a = 3
end

puts "\n METHOD DEFINITION AND LOCAL VARIABLE SCOPE"
puts a      # method not called, remains '5'

# METHOD INVOCATION WITH A BLOCK
puts "\n METHOD INVOCATION WITH A BLOCK"
[1,2,3].each do |num|       # Method 'each' is invoked; 'num' is variable to represent array elements of 'each'
    puts num
end

# METHOD DEFINITION
def print_num(num)          # Method is defined with 'num' as paramter
    puts num
end

# MUTATING (PERMANENTLY CHANGING) ARGUMENTS
puts "\n MUTATING ARGUMENTS"
def some_method_2(number)
    number = 7  
end

a = 5
some_method_2(a)    # a is '7' only inside the method, unless returned as new value
puts a              # a is '5' because variable outside of method

# Skipped the mutate argument because it used #pop, which is a destructive method

# PUTS VS RETURN: THE SEQUEL
puts "\nPUTS VS RETURN"
a = [1,2,3]

def mutate(array)
    array.pop
end

p "Before mutate method: #{a}"
p mutate(a)                     # #mutate array.pop returns value of #pop
p "After mutate method: #{a}"

puts
def add_three(number)
    return number + 3           # implicit return (no need of return keyword)
    number + 4                  # method ends with return; everything after is disregarded
end

returned_value = add_three(4)
puts returned_value

puts
def just_assignment(number)
    foo = number + 3
end

puts just_assignment(2)

# CHAINING METHODS
puts "\nCHAINING METHODS"
# use add_three method
add_three(5)
add_three(5).times {puts "This should print 8 times"}   # also returns 8 because of add_three method
puts

p "Hi there".length.to_s        # get length, converts value to string

# METHOD CALLS AS ARGUMENTS
puts "\nMETHOD CALLS AS ARGUMENTS"
def add(a,b)
    a + b
end

def subtract (a,b)
    a - b
end

p add(20,45)
p subtract(80,10)

def multiply(num1, num2)
    num1 * num2
end

p multiply(add(20,45),subtract(80,10))
p add(subtract(80,10), multiply(subtract(20,6), add(30,5)))

# THE CALLS STACK
puts "\nTHE CALL STACK"

def first
    puts "first method"
end

def second
    first
    puts "second method"
end

second

# -------------------------------------------------------------
# EXERCISES

# 1. Write a program that prints a greeting message. This program should contain a method called greeting that takes a name as its parameter and returns a string.

puts "\nEXERCIES\nExercise 1."
def greeting (name = "fellow")
    p "Greetings #{name}!"
end
greeting

# 2. 
puts "\nExercise 2. What do the following expressions evaluate to? That is, what value does each expression return?"

puts "1. x = 2\n2. puts x = 2\n3. p name = \"Joe\"\n4. four = \"four\"\n5. print something = \"nothing\""

puts "\nAnswers:\n1. 2\n2. nil\n3. Joe\n4. four\n5. nil"

# 3. Write a program that includes a method called multiply that takes two arguments and returns the product of the two numbers.
puts "\nExercise 3"

def multiply_exercise (x,y)
    x * y
end

p multiply_exercise(5,6)

# 4.
puts "\nExercise 4. What will the following code print to the screen?\n"
puts "def scream(words)
  words = words + \"!!!!\"
  return
  puts words
end

scream(\"Yippeee\")"

puts "\nIt returns nothing. return expression is empty."

# 5. 1.) Edit the method definition in exercise #4 so that it does print words on the screen. 2) What does it return now?
puts "\nExercise 5"
def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")
puts "Method returns nil because it only prints."

# 6
puts "\nExercise 6. What does the following error message tell you?"
puts "ArgumentError: wrong number of arguments (1 for 2)
  from (irb):1:in `calculate_product'
  from (irb):4
  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'"

puts "\nOnly one argument was passed when the method needed 2."