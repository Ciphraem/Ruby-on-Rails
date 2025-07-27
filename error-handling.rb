# error-handling.rb from "Exception and Error Handling", The Bastards Book of Ruby

# # =================== EXAMPLE 1 ============================
# values = [42, 'a', 'r', 9, 5, 10022, 8.7, "sharon", "Libya", "Mars", "12", 98, rand + rand, {:dog=>'cat'}, 100, nil, 200.0000, Object, 680, 3.14, "Steve", 78, "Argo"].shuffle

# while values.length > 0
#   a = values.pop
#   b = values.pop

#   begin
#     a + b
#   rescue
#     puts "Could not add variables 'a' (#{a.class}) and 'b' (#{b.class})"
#   else
#     puts "a + b is #{a+b}"
#   end
# end


# # ======================== EXAMPLE 2 ===============================
# 
# while 1
#   puts "Enter a number>>"
#   begin
#     num = Kernel.gets.match(/\d+/)[0]
#   rescue
#     puts "Erroneous input! Try again..."
#   else
#     puts "#{num} + 1 is: #{num.to_i+1}"  
#   end
# end


# # ========================== EXAMPLE 3 ===============================
# require 'open-uri'
# require 'timeout'

# remote_base_url = "https://en.wikipedia.org/wiki"

# start_year = 1900
# end_year = 2000

# (start_year..end_year).each do |yr|
#   begin
#     rpage = open("#{remote_base_url}/#{yr}")
#   rescue StandardError=>e
#     puts "Error: #{e}"
#   else
#     rdata = rpage.read
#   ensure
#     puts "sleeping"
#     sleep 5
#   end

#   if rdata
#   File.open("copy-of-#{yr}.html", "w"){|f| f.write(rdata)}
#   end
# end


# # ======================= EXAMPLE 4 ===========================
# for i in 'A'..'C'
#   retries = 2
#   begin
#     puts "Executing command #{i}"
#     raise "Exception: #{i}"
#   rescue Exception=>e
#     puts "\tCaught: #{e}"
#     if retries > 0
#       puts "\tTrying #{retries} more times\n"
#       retries -= 1
#       sleep 2
#       retry
#     end
#   end
# end


# # ======================== EXAMPLE 5 ==========================
# require 'open-uri'
# remote_base_url = "https://en.wikipedia.org/wiki"

# [1900, 1910, 'xj3490', 2000].each do |yr|
 
#   retries = 3

#   begin
#     url = "#{remote_base_url}/#{yr}"
#     puts "Getting page #{url}"
#     rpage = open(url)
#   rescue StandardError=>e
#     puts "\tError: #{e}"
#     if retries > 0
#       puts "\tTrying #{retries} more times"
#       retries -= 1
#       sleep 1
#       retry
#     else
#       puts "\t\tCan't get #{yr}, so moving on"
#     end    
#   else
#     puts "\tGot page for #{yr}"
#   ensure   
#     puts "Ensure branch; sleeping"
#     sleep 1

#   end
# end