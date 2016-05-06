def translate(str)
  arr = str.split(" ")
  arr.map! {|word| word.split(//)}
  arr.map! do |word|
    while !word[0].match(/a|e|i|o|u/) || (word.first == 'u' && word.last == 'q')
      word << word.shift
    end
    word = word.join
    word << "ay"
  end
  arr.join(" ")
end
