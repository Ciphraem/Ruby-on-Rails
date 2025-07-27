# examples from Ruby Explained by Erik Trautman

class Person
  attr_accessor :name, :age, :health, :strength, :dead
  MAX_HEALTH = 120
  @dead = false
  def initialize (name, age, health, strength)
    @name = name
    @age = age
    @health = health
    @strength = strength
  end

  def heal
      self.health += 1 unless self.health + 1 > MAX_HEALTH
  end
end


class Viking < Person
  attr_accessor :weapon
  def initialize (name, age, health, strength, weapon="Axe")
    super(name, age, health, strength)
    @weapon = weapon
  end

  def attack (enemy)
      if enemy.dead
          puts "#{enemy.name} is already dead."
          return false
      end
      damage = [(rand * @strength) + (@strength / 2), strength].min
      damage = damage.round().to_i
      puts "#{@name} attacks #{enemy.name} for #{damage} damage!"
      enemy.take_damage(damage)
      puts "#{enemy.name}'s health drops to #{enemy.health} hitpoints." unless enemy.health <= 0
  end

  def shout(words)
    puts words
  end

  def sleep
    health += 1 unless health >= health-1
  end

  def self.create_warrior(name)
      age = rand * 20 + 15
      age = age.round
      health = [age*5,120].min.round
      strength = [age/2, 10].min.round
      Viking.new(name, age, health, strength)
  end

  def self.random_name
      ["Onam", "Arngrim", "Balli", "Herlu", "Borstig"].sample
  end

  def self.silver_to_gold(silver_pieces)
      silver_pieces/10
  end

  def heal
      2.times {super}
      self.shout("Let me back in there!")
  end

  protected
  def take_damage(damage)
    self.health -= damage
    die if self.health <= 0
    self.shout("#{@name}: Ouch!") unless self.health <= 0
  end

  private
  def die
      puts "#{self.name} has been slain =("
      self.dead = true
  end
end

oleg = Viking.new("Oleg", 19, 100, 8)
p oleg
lars = Viking.new("Lars", 20, 120, 9)
lars.attack(oleg)
sten = Viking.create_warrior("Sten")
p sten
warrior1 = Viking.create_warrior(Viking.random_name)
p warrior1

while oleg.health > 0
    sten.attack(oleg)
end
sten.attack(oleg)

def launch_longships(longships)
    launched_ships = 0
    longships.each do |longship|
        longship_name = "#{longship.owner.name}'s Reaver"
        longship.launch
        launched_ships += 1
        puts "#{longship_name} successfully launched."
    end
    puts "Excellent news! We've launched #{launched_ships} ships!"
end
