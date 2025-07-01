# predicate-enumerables-practice.rb for the Predicate Enumerables Methods lesson from The Odin Project

# #include? method
puts "#include? method"
puts "Long Method"
numbers = [5,6,7,8]
element = 6
result = false

numbers.each do |number|
    if number == element
      result = true
      break
    end
end

p result

element = 3
result = false

numbers.each do |number|
    if number == element
      result = true
      break
    end
end

p result

puts "Short Method"

numbers = [5,6,7,8]
p numbers.include?(6)
p numbers.include?(3)

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = friends.select {|friend| friend != 'Brian'}
p invited_list.include?('Brian')

# #any? method
puts "\n#any? method"
puts "Long Method"

numbers = [21,42,303,499,550,811]
result = false

numbers.each do |number|
    if number > 500
      result = true
      break
    end
end
p result

result = false
numbers.each do |number|
    if number < 20
      result = true
      break
    end
end
p result

puts "Short Method"

p numbers.any? {|number| number>500}
p numbers.any? {|number| number<20}

# #all? method
puts "\n#all? method"
puts "Long Method"

fruits = ['apple', 'banana', 'strawberry', 'pineapple']
matches = []
result = false

fruits.each do |fruit|
    if fruit.length > 3
            matches.push(fruit)
    end
end

result = fruits.length == matches.length
p result

matches = []
result = false

fruits.each do |fruit|
    if fruit.length > 6
            matches.push(fruit)
    end
end

result = fruits.length == matches.length
p result

puts "Short Method"
p fruits.all? {|fruit| fruit.length > 3}
p fruits.all? {|fruit| fruit.length > 6}    # special note that #all? defaults true

# #none? method
puts "\n#none? method"
puts "Long Method"

result = true
fruits.each do |fruit|
    if fruit.length > 10
            result = false
            break
    end
end
p result

result = true
fruits.each do |fruit|
    if fruit.length > 6
            result = false
            break
    end
end
p result

puts "Short Method"
p fruits.none? {|fruit| fruit.length > 10}
p fruits.none? {|fruit| fruit.length > 6}