require './roman_numerals.rb'

describe RomanNumerals do

    let(:roman) { RomanNumerals.new }

    it "can convert a roman numeral to and from an integer" do
        expect(roman.to_roman(1)).to eq('I')
    end  

    it "can convert a roman numeral to and from an integer" do
        expect(roman.to_roman(2)).to eq('II')
    end  

    it "can convert a roman numeral to and from an integer" do
        expect(roman.to_roman(5)).to eq('V')
    end  

    it "can convert a roman numeral to and from an integer" do
        expect(roman.to_roman(4)).to eq('IV')
    end  

    it "can convert a roman numeral to and from an integer" do
        expect(roman.to_roman(6)).to eq('VI')
    end  

    it "can convert a roman numeral to and from an integer" do
        expect(roman.to_roman(7)).to eq('VII')
    end  
             
end