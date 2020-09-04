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
    length = number_length(num)
    case length
    when 1
      single_num
    when 2
      double_num
    when 3
      triple_num
    end
  end

  def single_num
    case $number[0]
    when 1..3
      "I" * $number[0]
      when 4
        "IV"
      when 5
        "V"
      when 6..8
        num = $number[0] - 5
        "V" + ("I" * num)
      when 9
        "IX"
    end
  end

  def double_num
    deci = which_deci($number[0]) 
    case $number[-1]
    when 0
      deci
    when 1..3
      deci + ("I" * $number[-1]) 
    when 4 
      deci + single_num
    when 5 
      deci + single_num
    when 6..8
      num = $number[-1] - 5
      p num
      deci + "V" + ("I" * num)
    when 9
      deci + single_num
    end
  end

  def which_deci(num)
    case num
    when 1..3
      "X" * num
    when 4
      "XL"
    when 5..8
      "L"
    when 9
      "XC"
    end
  end

  def from_roman(rom)
    $roman_numbers.key(rom)
  end

  private

  def number_length(num)
    $number = num.digits.reverse
    $number.length
  end

end
