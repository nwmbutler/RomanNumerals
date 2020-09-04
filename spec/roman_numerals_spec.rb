require './roman_numerals.rb'

describe RomanNumerals do

  let(:roman) { RomanNumerals.new }

  it "can convert a roman numeral to and from an integer" do
    expect(roman.to_roman(1)).to eq('I')
    expect(roman.to_roman(2)).to eq('II')
    expect(roman.to_roman(4)).to eq('IV')
    expect(roman.to_roman(5)).to eq('V')
    expect(roman.to_roman(6)).to eq('VI')
    expect(roman.to_roman(7)).to eq('VII')
    expect(roman.to_roman(11)).to eq('XI')
    expect(roman.to_roman(13)).to eq('XIII')
    expect(roman.to_roman(33)).to eq('XXXIII')
    expect(roman.to_roman(38)).to eq('XXXVIII')
    expect(roman.to_roman(47)).to eq('XLVII')
    expect(roman.to_roman(90)).to eq('XC')
    expect(roman.to_roman(98)).to eq('XCVIII')
    expect(roman.to_roman(99)).to eq('XCIX')
    expect(roman.to_roman(298)).to eq('CCXCVIII')
    expect(roman.to_roman(503)).to eq('DIII')
    expect(roman.to_roman(704)).to eq('DCCIV')
    expect(roman.to_roman(999)).to eq('CMXCIX')
    expect(roman.to_roman(75)).to eq('LXXV')
    expect(roman.to_roman(1775)).to eq('MDCCLXXV')
    expect(roman.to_roman(2131)).to eq('MMCXXXI')
    expect(roman.to_roman(2970)).to eq('MMCMLXX')
  end 

end
