require 'rails_helper'

RSpec.describe StringCalculator, type: :model do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(StringCalculator.add("")).to eq(0)
    end

    it 'add method returns the number itself for a single number' do
      expect(StringCalculator.add("1")).to eq(1)
    end
  end
end
