
class Person
attr_accessor :name, :age, :parent_permission
attr_accessor :id
def initialize(name="unknown", age, parent_permission:true)
  @id = Random.rand(1..500)
  @name = name
  @age = age
  @parent_permission = parent_permission
end

def can_use_services?
  if is_of_age or @parent_permission
    return true
  end
  return false
end

private
def is_of_age
if @age >= 18
  return true
end
return false
end
end

person1 = Person.new("human",5)
puts person1.age
puts person1.name
