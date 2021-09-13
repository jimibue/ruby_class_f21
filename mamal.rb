class Mammal
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
 
  def breathe 
    puts "inhale and exhale" 
  end 
 
  def speak
    raise "You must over ride this method in the sub class!"
  end
end 

class Cat < Mammal 
  attr_accessor :favorite_catnip
  def initialize(name, age, favorite_catnip)
    @favorite_catnip = favorite_catnip
    super(name, age)
  end

   def speak
    puts "#{name} is meowing" 
  end
end 


class Dog < Mammal 
  attr_accessor :favorite_ball
  def initialize(name, age, favorite_ball)
    @favorite_ball = favorite_ball
    super(name, age)
  end

   def speak
    ## if i use self in a instance it refers to 'this' instance of the class
    puts "#{self} #{self.name} ruff" 
  end
end 


jax = Dog.new('Jax', 2,'tennis')
t = Dog.new('tony', 2,'tennis')
jax.breathe 
jax.speak 
t.speak 