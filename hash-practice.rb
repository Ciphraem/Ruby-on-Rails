# hash-practice.rb

# MAKING HASHES --------------------------
my_hash = {
    "a random word" => "ahoy",
    "Dorothy's math test score" => 94,
    "an array" => [1,2,3],
    "an empty hash within a hash" => [],
    9 => "nine",
    :six => 6           # apparently this is called a symbol. First time to encounter that
}
# my_hash = Hash.new    also works
# my_hash               => {}

# ACCESSING VALUES ---------------------------
puts my_hash["a random word"]                   #=> ahoy
# my_hash['anotehr array']                      # will return nil
# my_hash.fetch['another array']                # KeyError: key is not found
# my_hash.fetch['another array', '[1,2,3,4,5]'  # returns default value given


# ADDING AND CHANING DATA ------------------------
shoes = {
    "summer" => 'sandals',
    'winter' => 'boots'
}

shoes['fall'] = 'sneakers'
puts shoes      #=> {"summer"=>"sandals", "winter"=>"boots", "fall"=>"sneakers"}

shoes['summer'] = 'flip-flops'
puts shoes      #=> {"summer"=>"flip-flops", "winter"=>"boots", "fall"=>"sneakers"}

# REMOVING DATA ---------------------------------
puts shoes.delete('summer')     #=> returns deleted key-value (flip-flops)
puts shoes                      #=> {"winter"=>"boots", "fall"=>"sneakers"}

# METHODS -----------------------------
books = {
    "Infinite Jest" => 'David Foster Wallace',
    "Into the Wild" => 'Jon Krakauer'
}

p books.keys        #=> ["Infinite Jest", "Into the Wild"]
p books.values      #=> ["David Foster Wallace", "Jon Krakauer"]

# MERGING TWO HASHES ------------------------------
hash1 = {'a' => 100, 'b' => 200}
hash2 = {'b' => 254, 'c' => 300}
p hash1.merge(hash2)        #=> {"a"=>100, "b"=>254, "c"=>300}   Non-destructive btw

# SYMBOLS AS HASH KEYS ------------------------------
# Apparently, I'll actually see symbols used for hash most of the time. Makes sense; it's better.

# 'Rocket' syntax
american_cars ={
    :chevrolet => "Corvette",
    :ford => "Mustang",
    :dodge => "Ram"
}
# 'Symbols' syntax
japanese_cars = {
    honda: "Accord",
    toyota: "Corolla",
    nissan: "Altima"
}

p american_cars     #=> {:chevrolet=>"Corvette", :ford=>"Mustang", :dodge=>"Ram"}
p japanese_cars     #=> {:honda=>"Accord", :toyota=>"Corolla", :nissan=>"Altima"}

p american_cars[:ford]      #=> "Mustang"
p japanese_cars[:honda]     #=> "Accord"


# FROM LAUNCH SCHOOL =============================================

# iterating over hashes
person = {
    name: 'bob',
    height: '6 ft',
    weight: '160 lbs',
    hair: 'brown'
}

person.each do |key, value|
    puts "Bob's #{key} is #{value}."
end

# hashes as optoinal parameters
def greeting(name, options = {})
    if options.empty?
        puts "Hi, my name is #{name}."
    else
        puts "Hi, my name is #{name} and I'm #{options[:age]}" + " years old and I live in #{options[:city]}."
    end
end

greeting("Bob")
greeting("Bob", {age: 62, city: "New York City"})
greeting("Bob", age: 62, city: "New York City")

# common hash methods
name_and_age = {Bob: 42, Steve: 31, Joe: 19}
p name_and_age.key?(:Steve)
p name_and_age.key?("Larry")

p name_and_age.select {|k,v| k==:Bob}
p name_and_age.select {|k,v| k==:Bob || v==19}

p name_and_age.fetch(:Steve)
#p name_and_age.fetch(:Larry)   #KeyError
p name_and_age.fetch(:Larry, "Larry isn't in this hash")

p name_and_age.to_a
p name_and_age

p name_and_age.keys
p name_and_age.values


# Exercises
# 1. Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select method to gather only siblings' names into a new array.

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

siblings = family.select {|k,v| k==:brothers || k==:sisters}
siblings_arr = siblings.values.flatten
p siblings_arr

# 2. Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.

h1 = {
    bread: "wheat",
    spread: "butter",
    prep: "toast"
}
h2 = {
    juice: "orange",
    size: "large",
    prep: "squeezed"
}
h3 = {
    frute: "apple",
    prep: "sliced"
}

p h1.merge(h2,h3)       # non-destructive
p h1

h4 = Hash.new
p h4.merge!(h1, h2,h3)      # destructive
p h4

# 3. Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. Then write a program that does the same thing except printing the values. Finally, write a program that prints both.

h4.each do |key, value|
    p key
end

h4.each do |key, value|
    p value
end

h4.each do |key, value|
    p "The value of #{key} is #{value}."
end

# 4. Given the following expression, how would you access the name of the person?

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

p person[:name]

# 5. What method could you use to find out if a Hash contains a specific value in it? Write a program that verifies that the value is within the hash.

p h4.fetch("breakfast", "Meal is breakfast")
p h4.value?("breakfast")

# 6. Given the following code...
x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}
# What's the difference between the two hashes that were created?

# my_hash uses a symbol as a key, while my_hash2 uses a variable as a key.

# 7. If you see this error, what do you suspect is the most likely problem?
# NoMethodError: undefined method `keys' for Array
# A. We're missing keys in an array variable.
# B. There is no method called keys for Array objects.
# C. keys is an Array object, but it hasn't been defined yet.
# D. There's an array of strings, and we're trying to get the string keys out of the array, but it doesn't exist.

# B. You don't use keys for Arrays.