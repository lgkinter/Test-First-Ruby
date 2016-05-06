class Temperature

  def initialize(options={})
    @degrees_f = options[:f] || ctof(options[:c])
    @degrees_c = options[:c] || ftoc(options[:f])
  end

  def in_fahrenheit
    @degrees_f
  end

  def in_celsius
    @degrees_c
  end

  def self.from_celsius(degrees)
    new(:c => degrees)
  end

  def self.from_fahrenheit(degrees)
    new(:f => degrees)
  end

  def ftoc(degrees)
    (degrees - 32) * 5.0 / 9.0
  end

  def ctof(degrees)
    degrees * (9.0/5.0) + 32
  end

end

class Celsius < Temperature
  def initialize(degrees)
    super(:c => degrees)
  end
end

class Fahrenheit < Temperature
  def initialize(degrees)
    super(:f => degrees)
  end
end
