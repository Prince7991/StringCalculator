class StringCalculator < ApplicationRecord

  def self.add(numbers)
    return 0 if numbers.empty?
    
    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers.split("\n", 2).last
      numbers.split(delimiter).map(&:to_i).sum
    else
      numbers.gsub("\n", ",").split(',').map(&:to_i).sum
    end
  end
end
