require_relative 'parent'
class Child < Parent
  def overide_yo
    puts "overide_yo called from child"
  end

  def alterable
    super()
    puts "but i do what I want"
  end
end

p = Parent.new
c = Child.new

p.alterable
c.alterable