require './roman_numerals.rb'

describe RomanNumerals do

  let(:roman) { RomanNumerals.new }

  it "can convert a roman numeral to and from an integer" do
    expect(roman.to_roman(1)).to eq('I')
  end  

  it "can convert a roman numeral to and from an integer" do
    expect(roman.to_roman(2)).to eq('II')
  end  

  xit "can convert a roman numeral to and from an integer" do
    expect(roman.to_roman(5)).to eq('V')
  end  

  xit "can convert a roman numeral to and from an integer" do
    expect(roman.to_roman(4)).to eq('IV')
  end  

  it "can convert a roman numeral to and from an integer" do
    expect(roman.to_roman(6)).to eq('VI')
  end  

  it "can convert a roman numeral to and from an integer" do
    expect(roman.to_roman(7)).to eq('VII')
  end  

  xit "can convert a roman numeral to and from an integer" do
    expect(roman.to_roman(11)).to eq('XI')
  end  

  xit "can convert a roman numeral to and from an integer" do
    expect(roman.to_roman(13)).to eq('XIII')
  end  

  xit "can convert a roman numeral to and from an integer" do
    expect(roman.to_roman(33)).to eq('XXXIII')
  end  

  xit "can convert a roman numeral to and from an integer" do
    expect(roman.to_roman(38)).to eq('XXXVIII')
  end 

  it "can convert a roman numeral to an integer" do
    expect(roman.from_roman("M")).to eq(1000)
  end  

  it "can convert a roman numeral to an integer" do
    roman.to_roman(34)
    expect(roman.contains_four).to eq("IV")
  end  

  it "can convert a roman numeral to an integer" do
    roman.to_roman(35)
    expect(roman.contains_five).to eq("V")
  end  
             
end
