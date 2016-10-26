# hoge = [1, 2, "hoge", [2, 1.3]]
#
# puts hoge[0].class


# hash = { "hoge" => 1, "foo" => { "bar" => 3 } }
#
# sample = hash["foo"]["bar"]
# puts sample


class Person
  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

  def hello
    "hello!!," + @name.to_s + ",age," + @age.to_s + ",gender" + @gender.to_s
  end

  def goodbye
    "good bye!!" + @name.to_s + "age" + @age.to_s + "gender" + @gender.to_s
  end

  attr_accessor :name, :age, :gender

  # def name # accseserメソッド
  #   @name
  # end
  #
  # def name=(new_name)
  #   @name = new_name
  # end
end

someone = Person.new("takeshi", 30, "otoko")

puts someone.hello
puts someone.goodbye
puts someone.name
someone.name = "takuma"
someone.age = 25
someone.gender = "otoko"
puts someone.name
puts someone.age
puts someone.gender
puts someone.hello
