class RomanNumerals

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