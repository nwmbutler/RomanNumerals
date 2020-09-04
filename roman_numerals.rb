class RomanNumerals
 
  $roman_numbers = {
    1000 => "M",  
     900 => "CM",  
     500 => "D",  
     400 => "CD",
     100 => "C",  
      90 => "XC",  
      50 => "L",  
      40 => "XL",  
      10 => "X",  
        9 => "IX", 
        8 => "VIII",
        7 => "VII",
        6 => "VI",
        5 => "V",  
        4 => "IV",
        3 => "III",
        2 => "II", 
        1 => "I", 
  }

  def to_roman(num)
    number_length(num) == 1 ? single_num(num) : double_num(num)
  end

  def number_length(num)
    $number = num.digits.reverse
    $number.length
  end

  def single_num(num)
    case $number[0]
    when 1..3
      "I" * $number[0]
      when 4, contains_four
      when 5, contains_five
      when 6..9
        num = $number[0] - 5
        "V" + ("I" * num)
    end
  end

  def double_num(num)
    case $number[-1]
    when 4, contains_four
    when 5, contains_five
    when 1..3, "I" * $number[0]
    end
  end

  def contains_four
    "IV"
  end

  def contains_five
    "V"
  end

  def from_roman(rom)
    $roman_numbers.key(rom)
  end

end
