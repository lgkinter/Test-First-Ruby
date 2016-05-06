class Array
  def sum
    self.inject(0){|sum,n| sum + n}
  end

  def square
    self.map{|i| i**2}
  end

  def square!
    self.map!{|i| i**2}
  end
end
