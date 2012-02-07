class Animal
  @@lista_animal = []
  attr_accessor :species, :max_speed
  
  def initialize species, max_speed
    @species = species
    @max_speed = max_speed
    
    @@lista_animal << self
  end  
  
  def self.fastest
    return @@lista_animal.sort_by(&:max_speed)[@@lista_animal.size-1]
  end
  
  def self.slowest
    return @@lista_animal.sort_by(&:max_speed)[0]
  end    
  
end  

c = Animal.new('teste150',150)
a = Animal.new('teste120',120)
b = Animal.new('teste130',130)

puts Animal.fastest.species
puts Animal.slowest.species