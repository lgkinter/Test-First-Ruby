class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    seconds = @seconds % 60
    minutes = (@seconds / 60) % 60
    hours = (@seconds / 60 / 60)
    format("%02d:%02d:%02d", hours, minutes, seconds)
  end

end
