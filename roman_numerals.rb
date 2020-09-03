class RomanNumerals

  ROMAN_NUMBERS = {
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
        5 => "V",  
        4 => "IV",  
        1 => "I",  
  }

  def to_roman(num)
    rom = Array.new(num, "I")
    case rom.length
    when 5 
      "V"
    when 4
      "IV"
    when 1..3
      rom.join('')
    when 6..8
      "V" + "I" * (rom.length - 5)
    end
  end
end