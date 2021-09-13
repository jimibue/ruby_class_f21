class Person
  attr_accessor :first_name, :last_name, :school

  def initialize(first, last, school)
    @first_name = first
    @last_name = last
    @school = school
  end

  def greet
    raise "Invalid role"
  end
end

class Student < Person
  def greet
    puts "Hello, my name is #{@first_name} #{@last_name} and I attend #{@school}"
  end
end

class Ta < Person
  def greet
    puts "Hello, my name is #{@first_name} #{@last_name} and I am a TA at #{@school}"
  end
end

class Teacher < Person
  def initialize(first, last, school, salary)
    @salary = salary
    super(first, last, school)
  end
  def greet
    puts "Hello, I am #{@last_name} and I teach at #{@school}"
  end
end

student = Student.new('Jane', 'Doe', 'Mountain Valley Jr. High')
ta = Ta.new('Jake', 'Johnson', 'Mountain Valley Jr. High')
teacher = Teacher.new('Spencer', 'Richards', 'DevPoint Labs',123412341234)

student.greet
ta.greet
teacher.greet

# class Item < ActiveRecord
# end

# Item.all
# Item.find
# Item.find_by

# item = Item.new(item_params)
# item.save
# item.errors

def divide(num1, num2)
  if(num2 == 0)
    raise "can not divide by 0 in this app"
  end
  num1/num2
end

# divide(2,0)
# divide(2,0)
begin
 divide(2,0)
rescue => err
  puts err
  # puts 'here'
end
puts 'HERERERERE'
