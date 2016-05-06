class Friend
  def initialize
  end
  def greeting(name = nil)
    name.nil? ? "Hello!" : "Hello, #{name}!"
  end
end
