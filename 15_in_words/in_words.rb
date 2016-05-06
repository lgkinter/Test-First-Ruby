module InWords
  def in_words
    str = ""
    return "zero" if self == 0

    trillion = (self / 1_000_000_000_000)
    billion = (self / 1_000_000_000) - trillion * 1_000
    million = (self / 1_000_000) - trillion * 1_000_000 - billion * 1_000
    thousand = (self / 1_000) - trillion * 1_000_000_000 - billion * 1_000_000 - million * 1_000
    hundred =  (self) - trillion * 1_000_000_000_000 - billion * 1_000_000_000 - million * 1_000_000 - thousand * 1_000

    str << write_out(trillion).to_s + " trillion " if self >= 1_000_000_000_000 && trillion > 0
    str << write_out(billion).to_s + " billion " if self >= 1_000_000_000 && billion > 0
    str << write_out(million).to_s + " million " if self >= 1_000_000 && million > 0
    str << write_out(thousand).to_s + " thousand " if self >= 1_000 && thousand > 0
    str << write_out(hundred).to_s
    return str.strip
  end

  def write_out(num)
    result = ""
    hundreds_digit = (num / 100)
    tens_digit = (num / 10) % 10
    ones_digit = num - hundreds_digit * 100 - tens_digit * 10
    tens = %w{ten twenty thirty forty fifty sixty seventy eighty ninety}
    ones = %w{one two three four five six seven eight nine}
    teens = %w{ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen}
    result << "#{ones[hundreds_digit-1]} hundred" if hundreds_digit > 0
    result << " " if hundreds_digit > 0 && tens_digit > 0
    result << "#{(tens_digit > 1) ? tens[tens_digit-1] : teens[ones_digit]}" if tens_digit > 0
    result << " " if tens_digit > 1 && ones_digit > 0
    result << "#{(tens_digit == 1) ? "" : ones[ones_digit-1]}" if ones_digit > 0
    result
  end
end

class Fixnum
  include InWords
end

puts 1_000.in_words
