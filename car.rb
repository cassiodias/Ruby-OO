class Car
  
  def initialize brand, speed
    @brand = brand
    @speed = speed
  end  
      
  attr_reader :brand, :speed
  
  def max_speed
    @speed / 3.6
  end  
end  

 car = Car.new 'Ferrari', 500
 puts car.max_speed