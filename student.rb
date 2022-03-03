require_relative('./person')

class Student < Person
  attr_accessor :classroom

  def initialize(name = 'Unknown', age:, classroom:, parent_permission: true)
    super(name: name, age: age, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky()
    "¯\(ツ)/¯"
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def to_s
    "[Student] #{super}"
  end
end
