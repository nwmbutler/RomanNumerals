class RomanNumerals

  def to_roman(num)
    length = number_length(num)
    case length
      when 1; single_num(num)
      when 2; double_num
      when 3; triple_num
      when 4; quad_num
    end
  end

  def single_num(num)
    case num
      when 0; ""
      when 1..3; "I" * num
      when 4; "IV"
      when 5; "V"
      when 6..8; num -= 5; "V" + ("I" * num)
      when 9; "IX"
    end
  end

  def double_num
    deci = deci($number[0]) 
    single = single_num($number[-1])
    deci + single
  end

  def triple_num
    cent = centi($number[0]) 
    deci = deci($number[1]) 
    single = single_num($number[-1])
    cent + deci + single
  end

  def quad_num
    milli = milli($number)
    deci = deci($number[2]) 
    single = single_num($number[-1])
    milli + deci + single
  end


  private

  def number_length(num)
    $number = num.digits.reverse
    $number.length
  end

  def deci(num)
    case num
      when 0; ""
      when 1..3; "X" * num
      when 4; "XL"
      when 5..8; "LXX"
      when 9; "XC"
    end
  end

  def centi(num)
    case num
      when 0; ""
      when 1..3; "C" * num
      when 4; "CD"
      when 5; "D" 
      when 6; "DC"
      when 7; "DCC"
      when 8; "DCCC"
      when 9; "CM"
    end
  end

  def milli(num)
    case num[1]
      when 1; "M" + ("C" * num[1])
      when 4; "MCD"
      when 5..8; num = num[1] -= 5; "MD" + ("C" * num)
      when 9; "MCM"
    end
  end

end
