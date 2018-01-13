class User
  attr_reader :name, :last_name

  def initialize(name, last_name)
    @name = name
    @last_name = last_name
  end

  def say_my_name
    return "O gio é gay!" unless name

    "Meu nome é #{name} #{last_name}!"
  end

  def say_my_name_reverse
    return name.reverse if name
    return last_name if last_name
    "O que diabos é o inverso de nulo?"
  end
end
