# good_dog_class.rb for the OOP Lesson from Launch School.
# Topics: Inheritance, Subclass, Superclass, Module, Super, Method Lookup Path

module Walkable
  def walk
    "I can walk!"
  end
end

module Swimmable
  def swim 
    "I can swim!"
  end
end

module Climbable
  def  climb
    "I can climb!"
  end
end


class Animal
    attr_accessor :name
    include Walkable
    # def speak
    #         "Hello!"
    # end

    def initialize(name)
            @name = name
    end

    def speak
        "I'm an animal, and I can speak!"
    end
end

class Fish < Animal
    include Swimmable
    def initialize(name)
            super(name)
    end
end

class Mammal < Animal
end

class Dog < Mammal
    attr_accessor :name
    include Swimmable
    include Climbable

    def initialize(name,color)
            # self.name = name
            super(name)
            @color = color
    end

    def speak
            super + " from Dog class"
    end
end

# class BadDog < Mammal
#     def initialize(age,name)
#             super(name)
#             @age=age
#     end
# end

class Cat < Mammal
  def initialize (name)
        super (name)
  end
end

sparky = Dog.new("Sparky","black")
neemo = Fish.new("Neemo")
paws = Cat.new("Paws")

p sparky.swim
p neemo.swim
p paws.swim

# p BadDog.new(2,"bear")

puts "---Animal method lookup---"
puts Animal.ancestors

fido = Animal.new("Fido")
puts fido.speak

puts fido.walk

puts "---GoodDog method lookup---"
puts Dog.ancestors