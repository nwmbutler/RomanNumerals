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
    number = num.digits.reverse
    p number
    rom = []
   if num <= 9 
     $roman_numbers[num] 
   elsif number.count >= 2
     if number[0] == 1 
      rom << "X" + ("I" * number[1])
      rom.join('')
     end
   end
  end

  def from_roman(rom)
    $roman_numbers.key(rom)
  end

end