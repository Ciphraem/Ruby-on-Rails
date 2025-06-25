# enumerables-practice.rb for the Enumerables Lesson from The Odin Project

# introduction
p "Introduction"
friends = ['Sharon', 'Leo', 'Leila', "Brian", "Arun"]
invited_list = []

# for friend in friends do
#     if friend != "Brian"
#       invited_list.push(friend)
#     end
# end

p friends

# -------------- OR ---------------------

p friends.select { |friend| friend != "Brian"}

# -------------- OR ------------------

p friends.reject { |friend| friend == "Brian"}


# #each
puts "\n#each method"

friends = ['Sharon', 'Leo', 'Leila', "Brian", "Arun"]

friends.each { |friend| puts "Hello, #{friend}"}


# #each_with_index
puts "\n#each_with_index method"

fruits = ["apple", "banana", "strawberry", "pineapple"]

p fruits.each_with_index { |fruit, index| puts fruit if index.even?}  # original array is still returned


# #map method
puts "\n#map method"

p friends.map { |friend| friend.upcase }

my_order = ['medium Big Mac', 'medium fries', 'medium milkshake']
p my_order.map { |item| item.gsub('medium', 'extra large')}

salaries = [1200, 1500, 1100, 1800]
p salaries.map { |salary| salary-700}


# #select method
puts "\n#select method"

p friends.select { |friend| friend != "Brian"}

responses = {'Sharon' => 'yes', 'Leo' => 'no', 'Leila' => 'no', 'Arun' => 'yes'}
p responses.select { |person, response| response == 'yes'}


# #reduce method
puts "\n#reduce method"

my_numbers = [5, 6, 7, 8]
sum = 0

my_numbers.each { |number| sum += number }
# ------- OR ------
p my_numbers.reduce { |sum, number| sum + number}

votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]

votes.reduce(Hash.new(0)) do |result, vote|
  result[vote] += 1
  p result
end