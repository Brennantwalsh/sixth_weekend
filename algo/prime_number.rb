require 'rspec'
# Use RSpec to test the following exercise! You may wish to wrap the methods below in a class to help facilitate this.

# First, implement the is_prime? method below. It should accept a number as an argument and return
# true if the number is prime and false if it is not. A prime number is a number that is only
# divisible by itself and the number 1.
class Calculator
  def is_prime?(number)
    false_count = 0
    (2..(number - 1)).each do |divisor|
      if number % divisor == 0
        false_count += 1
      else
        true
      end
    end
    if false_count > 0
      false
    else
      true
    end
  end

# Second, implement the highest_prime_number_under method below. It should accept a number as
# an argument and return the highest prime number under that number. For example, the 
# highest prime number under 10 is 7.

  def highest_prime_number_under(number)

  end
end

RSpec.describe Calculator do
  let(:calculator) { Calculator.new}
  describe '#is_prime?' do
    it "should return true if number is 1" do
      expect(calculator.is_prime?(1)).to be true
    end
    it "should return true if number is 2" do
      expect(calculator.is_prime?(2)).to be true
    end
    it "should return true if number is 3" do
      expect(calculator.is_prime?(3)).to be true
    end
    it "should return false if number is 4" do
      expect(calculator.is_prime?(4)).to be false
    end
    it "should return true if number is 5" do
      expect(calculator.is_prime?(5)).to be true
    end
    it "should return false if number is 6" do
      expect(calculator.is_prime?(6)).to be false
    end
    it "should return true if number is 7" do
      expect(calculator.is_prime?(7)).to be true
    end
    it "should return false if number is 8" do
      expect(calculator.is_prime?(8)).to be false
    end
    it "should return false if number is 9" do
      expect(calculator.is_prime?(9)).to be false
    end
    it "should return false if number is 10" do
      expect(calculator.is_prime?(10)).to be false
    end
    it "should return true if number is 11" do
      expect(calculator.is_prime?(11)).to be true
    end
    it "should return true if number is 997" do
      expect(calculator.is_prime?(997)).to be true
    end
  end
end