# loops-and-iterators-practice.rb

=begin
x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end
=end                  

x = "GO"
while x != "STOP" do
  puts "Perform an action? Type \"STOP\" to stop."
  x = gets.chomp
  puts "You entered \"" + x + "\"."
end