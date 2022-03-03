class Person
  attr_accessor :id, :name, :age, :parent_permission

  def initialize(name = 'unknown', age:, parent_permission: true)
    @id = Random.rand(1..500)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    return true if is_of_age or @parent_permission

    false
  end

  private

  def of_age?
    return true if @age >= 18
  end
end
