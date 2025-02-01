require 'rails_helper'

RSpec.describe StringCalculator, type: :model do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(StringCalculator.add("")).to eq(0)
    end

    it 'add method returns the number itself for a single number' do
      expect(StringCalculator.add("1")).to eq(1)
    end

    it 'add method returns the sum of two numbers' do
      expect(StringCalculator.add("1, 4")).to eq(5)
    end

    it 'add method returns the sum of multiple numbers' do
      expect(StringCalculator.add("1, 4, 5")).to eq(10)
    end
  end
end
