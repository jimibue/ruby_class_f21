# blue print for a person
require_relative 'math'

class Person
  include Math
 
  attr_accessor :name
  attr_reader :age
  def initialize(name, age)
    puts 'initiailized called'
    puts add(1,1)
    @age = age
    @name = name
  end

  def say_hello
    "Hello I am #{@name} and I am #{@age} years old"
  end

  def birthday
   @age = @age + 1
  end

  def public_key
    private_key = secret
    return private_key%3 * 12
  end

  private

  def secret
    '123456'
  end

end

# creating a instance of person
john = Person.new('John', 23)
jill = Person.new('Jill', 34)
puts john.say_hello
puts jill.say_hello
puts jill.birthday
puts jill.public_key
 