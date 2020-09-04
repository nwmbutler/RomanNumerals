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
    number_length(num) == 1 ? single_num : double_num
  end

  def number_length(num)
    $number = num.digits.reverse
    $number.length
  end

  def single_num
    case $number[0]
    when 1..3
      "I" * $number[0]
      when 4
        "IV"
      when 5
        "V"
      when 6..9
        num = $number[0] - 5
        "V" + ("I" * num)
    end
  end

  def double_num
    deci = which_deci($number[0]) 
    case $number[-1]
    when 4 
      deci + "IV"
    when 5 
      deci + "V"
    when 1..3
      deci + ("I" * $number[-1]) 
    when 6..9
      num = $number[-1] - 5
      p num
      deci + "V" + ("I" * num)
    end
  end

  def which_deci(num)
    "X" * num
  end

  def from_roman(rom)
    $roman_numbers.key(rom)
  end

end
