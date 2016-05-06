class RPNCalculator
attr_reader :value

  def initialize
    @calculator = []
    @value = 0
  end
  def push(n)
    @calculator << n.to_f
  end

  def plus
    @value = pop if @value == 0
    @value += pop
  end

  def minus
    temp = pop
    @value = pop if @value == 0
    @value -= temp
  end

  def times
    @value = pop if @value == 0
    @value *= pop
  end

  def divide
    temp = pop
    @value = pop if @value == 0
    @value /= temp
  end

  def pop
    result = @calculator.pop
    raise "calculator is empty" if result.nil?
    result
  end

  def tokens(str)
    operations = ['*', '/', '+', '-']
    str.split(" ").map!{|i| operations.include?(i) ? i.to_sym : i.to_i}
  end

  def evaluate(str)
    @value = 0
    arr = tokens(str)
    arr.each do |i|
      case i
        when :*
          times
        when :+
          plus
        when :/
          divide
        when :-
          minus
        else
          push(i)
        end
      end
    @value
  end

end

calculator = RPNCalculator.new
calculator.push(1)
calculator.push(2)
calculator.push(3)
calculator.times
puts calculator.value
calculator.plus
puts calculator.value
calculator.push(4)
calculator.push(5)
calculator.minus
puts calculator.value
calculator.divide
puts calculator.value
