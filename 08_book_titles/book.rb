class Book
  attr_reader :title

  def title=(name)
    arr = name.split
    lil_words = %w{and in the but to with of a an}
    arr.map!{|word| lil_words.include?(word) ? word : word.capitalize}
    arr[0].capitalize!
    @title = arr.join(" ")
  end

end
