require 'non_repetitive_random_generator'

describe NonRepetitiveRandomNumberGenerator do
  it 'returns numbers between 0 and maximum, avoiding pairs' do
    random = NonRepetitiveRandomNumberGenerator.new
    maximum = 3
    previous_number = nil
    10.times do
      number = random.next(maximum)
      expect(number).to be >= 0
      expect(number).to be < maximum
      expect(number).to_not eq previous_number
      previous_number = number
    end
  end
end
