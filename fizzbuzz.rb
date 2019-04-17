require "rspec"

class Fizzbuzz
  def number_converter(input_number)
    return "FIZZBUZZ" if input_number % 15 == 0
    return "FIZZ" if input_number % 3 == 0
    return "BUZZ" if input_number % 5 == 0
    return input_number
  end
end

RSpec.describe Fizzbuzz do
  describe "#number_converter" do
    it "should return 1 if given 1" do
      fizzbuzz = Fizzbuzz.new
      result = fizzbuzz.number_converter(1)
      expect(result).to eq(1)
    end

    it "should return 2 if given 2" do
      fizzbuzz = Fizzbuzz.new
      result = fizzbuzz.number_converter(2)
      expect(result).to eq(2)
    end

    it "should return FIZZ if given 3" do
      fizzbuzz = Fizzbuzz.new
      result = fizzbuzz.number_converter(3)
      expect(result).to eq("FIZZ")
    end

    it "should return BUZZ if given 5" do
      fizzbuzz = Fizzbuzz.new
      result = fizzbuzz.number_converter(5)
      expect(result).to eq("BUZZ")
    end

    it "should return FIZZ if given 6" do
      fizzbuzz = Fizzbuzz.new
      result = fizzbuzz.number_converter(6)
      expect(result).to eq("FIZZ")
    end

    it "should return BUZZ if given 10" do
      fizzbuzz = Fizzbuzz.new
      result = fizzbuzz.number_converter(10)
      expect(result).to eq("BUZZ")
    end

    it "should return FIZZBUZZ if given 15" do
      fizzbuzz = Fizzbuzz.new
      result = fizzbuzz.number_converter(15)
      expect(result).to eq("FIZZBUZZ")
    end
  end
end
