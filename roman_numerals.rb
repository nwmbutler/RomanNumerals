class RomanNumerals

  def to_roman(num)
    rom = Array.new(num, "I")
    if rom.length === 5
      return 'V'
    else
    rom.join('')
    end
  end

end