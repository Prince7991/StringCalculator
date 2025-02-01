require 'rails_helper'

RSpec.describe StringCalculator, type: :model do
  describe ".add" do
    it "returns 0 for an empty string" do
      expect(StringCalculator.add("")).to eq(0)
    end

    it "add method returns the number itself for a single number" do
      expect(StringCalculator.add("1")).to eq(1)
    end

    it "add method returns the sum of two numbers" do
      expect(StringCalculator.add("1, 4")).to eq(5)
    end

    it "add method returns the sum of multiple numbers" do
      expect(StringCalculator.add("1, 4, 5")).to eq(10)
    end

    it "add method handles new lines between numbers" do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

    it "add method handles custom delimiters" do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
    end

    it "add method throws an exception for negative numbers" do
      expect {
        StringCalculator.add("-1,2")
      }.to raise_error(RuntimeError, "negative numbers not allowed -1")
    end

    it "raises an exception with the correct message for multiple negative numbers" do
      expect {
        StringCalculator.add("-1,-2,3,-4")
      }.to raise_error(RuntimeError, "negative numbers not allowed -1,-2,-4")
    end
  end
end
