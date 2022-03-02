require_relative('./person')

class Teacher < Person
  def can_use_services?
       true
    end
end

techer1 = Person.new("human",5)
puts techer1.can_use_services?
