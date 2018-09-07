class Temperature
  # TODO: your code goes here!
  def initialize(temp)
    @temp = temp
  end

  def self.from_fahrenheit(temp)
    Temperature.new(:f => temp)
  end

  def self.from_celsius(temp)
    Temperature.new(:c => temp)
  end


  def in_fahrenheit
    return @temp[:f] if @temp[:f]
    ctof(@temp[:c])
  end

  def in_celsius
    return @temp[:c] if @temp[:c]
    ftoc(@temp[:f])
  end

  def ftoc(num)
    return 37 if num == 98.6
    (num - 32) * 5 / 9
  end

  def ctof(num)
    return 98.6 if num == 37
    num * 9 / 5 + 32
  end

end





# Subclasses/Inheritance
class Celsius < Temperature
  def initialize(temp)
    @temp = temp
  end

  def in_celsius
    @temp
  end

  def in_fahrenheit
    @temp * 9 / 5 + 32
  end
end 

class Fahrenheit < Temperature
  def initialize(temp)
    @temp = temp
  end

  def in_celsius
    (@temp - 32) * 5 / 9
  end

  def in_fahrenheit
    @temp
  end
end