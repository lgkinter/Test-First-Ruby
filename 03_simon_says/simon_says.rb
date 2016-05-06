def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, n=2)
  repeat_str = str
  (n-1).times { repeat_str += (" " + str)}
  repeat_str
end

def start_of_word(str, n)
  str.slice(0, n)
end

def first_word(str)
  arr = str.split(" ")
  arr[0]
end

def titleize(str)
  arr = str.split
  lil_words = %w{and but or to at in which a the over}
  arr.map!{|i| lil_words.include?(i) ? i : i.capitalize}
  arr[0].capitalize!
  arr.join(" ")
end
