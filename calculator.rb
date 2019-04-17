require "rspec"

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end

  def add_three_numbers(n1, n2, n3)
    n1 + n2 + n3
  end
end

# calculator = Calculator.new
# if calculator.add(1, 2) == 3
#   puts "Test passes!"
# else
#   puts "Test failed."
# end

RSpec.describe Calculator do
  describe "#add" do
    it "should return the sum of two numbers" do
      calculator = Calculator.new
      result = calculator.add(1, 2)
      expect(result).to eq(3)
    end

    it "should work with negative numbers" do
      calculator = Calculator.new
      result = calculator.add(1, -3)
      expect(result).to eq(-2)
    end
  end

  describe "#subtract" do
    it "should return the difference of two numbers" do
      calculator = Calculator.new
      result = calculator.subtract(3, 4)
      expect(result).to eq(-1)
    end
  end

  describe "#square" do
    it "should return the number times itself" do
      calculator = Calculator.new
      result = calculator.square(4)
      expect(result).to eq(16)
    end
  end

  describe "#add_three_numbers" do
    it "should return the sum of three numbers" do
      calculator = Calculator.new
      result = calculator.add_three_numbers(3, 2, 4)
      expect(result).to eq(9)
    end
  end
end
