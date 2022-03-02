require_relative('./person')

class Student < Person
  attr_accessor :classroom

  def initialize (name='Unknown', age, classroom,  parent_permission: true)
    @classroom = classroom
  end

  def play_hooky(classroom)
      "¯\(ツ)/¯"
  end
end
student1 = Student.new("human",5, 4)
puts student1.play_hooky(3)
