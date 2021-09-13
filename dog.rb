class Dog
  # getter and setter
  # reader and write
  attr_accessor :name, :breed
  def initialize(name,breed)
   @name = name
   @breed = breed
  end

  # instance method methods called on the instance of the class
  def info
    "#{name} is of breed: #{breed}"
  end

  # class method called on the class (start with self)
  def self.species
    "canine"
  end
end

lars = Dog.new('Lars',"lab")
willard = Dog.new('Willard', 'red heeler')

puts lars.info
puts willard.info

puts Dog.species