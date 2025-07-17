# good_dob.rb from the OOP course on Launch School at https://launchschool.com/books/oo_ruby

module Speak
    def speak(sound)
            puts "#{sound}"
    end
end

class HumanBeing
    include Speak
end

class GoodDog
  attr_accessor :name, :height, :weight, :age
  @@number_of_dogs = 0
  DOG_YEARS = 7

  def initialize(n, h, w, a)
    self.name = n
    self.height = h
    self.weight = w
    self.age = a * DOG_YEARS
    @@number_of_dogs += 1
  end

  def speak
      "#{name} says Arf!"
  end

  def change_info(n,h,w)
      self.name = n
      self.height = h
      self.weight = w
  end

  def info
      "#{self.name} is #{self.age} years old in Dog Years, weighs #{self.weight}, and is #{self.height} tall."
  end

  def self.what_am_i
      puts "I'm a GoodDog class!"
  end

  def self.total_number_of_dogs
      @@number_of_dogs
  end

  def to_s
      "This dog's name is #{name} and it is #{age} in dog years."
  end
end



GoodDog.what_am_i
puts GoodDog.total_number_of_dogs
sparky = GoodDog.new("Sparky", "12 inches", "10 lbs", 4)
puts sparky.info
# puts sparky.speak
# puts sparky.name
sparky.change_info("Spartacus", "24 inches", "45 lbs")
puts sparky.info

fido = GoodDog.new("Fido", "10 inches", "15 lbs", 3)
puts fido.info

puts GoodDog.total_number_of_dogs

puts sparky
p sparky

# class Engine
#     def start
#         puts "Engine starting..."
#     end
# end

# class Passenger
# end

# class Car
#     def initialize(passengers)
#         @engine = Engine.new
#         @passengers = passengers
#     end

#     def start
#         @engine.start
#     end
# end

# passengers = [Passenger.new, Passenger.new]
# my_car = Car.new(passengers)
# my_car.start

# sparky = GoodDog.new
# sparky.speak("Arf!")
# bob = HumanBeing.new
# bob.speak("Hello!")

# puts "\n---GoodDog ancestors---"
# puts GoodDog.ancestors
# puts "\n---HumanBeing ancestors---"
# puts HumanBeing.ancestors


# Classes and Objects I exercises
# 1. Create a class called MyCar.
#     When you initialize a new instance or object of the class, allow the user to define some instance variables that tell us the year, color, and model of the car.
#      Create an instance variable that is set to 0 during instantiation of the object to track the current speed of the car as well.
#      Create instance methods that allow the car to speed up, brake, and shut the car off.
#      
# 2. Add an accessor method to your MyCar class to change and view the color of your car.
#     Then add an accessor method that allows you to view, but not modify, the year of your car.
#     
# 3. You want to create a nice interface that allows you to accurately describe the action you want your program to perform.
#     Create a method called spray_paint that can be called on an object and will modify the color of the car.

class MyCar
    attr_accessor :color, :speed
    attr_reader :year, :model

    def initialize(yr, clr, mdl)
        @year = yr
        self.color = clr
        @model = mdl
        self.speed = 0
        puts "\nA #{year} #{color} #{model} has appeared."
    end

    def accelerate=(num)
        self.speed += num
        puts "#{self.model} accelerated to #{speed} kph."
    end

    def brake=(num)
        self.speed -= num
        puts "#{self.model} brakes to #{speed} kph."
    end

    def off
        self.speed = 0
        puts "You turned the engine off."
    end

    def spray_paint=(new_color)
        self.color = new_color
        puts "Your #{year} #{model} is now #{color}."
    end

    def info
        puts "A #{year} #{color} #{model}"
    end
end

vios = MyCar.new(2020, "Blue", "Toyoto Vios")
vios.info
vios.accelerate = 50
vios.brake = 30
vios.off
vios.spray_paint = "Pink"
vios.info