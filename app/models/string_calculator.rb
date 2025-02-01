class StringCalculator < ApplicationRecord
  def self.add(numbers)
    return 0 if numbers.empty?
    
    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers.split("\n", 2).last
      numbers_array = numbers.split(delimiter)
    else
      numbers_array = numbers.gsub("\n", ",").split(',')
    end

    negatives = numbers_array.select { |n| n.to_i.negative? }
    if negatives.any?
      raise "negative numbers not allowed #{negatives.join(',')}"
    end

    numbers_array.map(&:to_i).sum
  end
end
