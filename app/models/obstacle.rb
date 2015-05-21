require 'non_repetitive_random_generator'

class Obstacle < ActiveRecord::Base
  has_many :jumps

  validate :options_uniqueness, :options_include_correct

  def self.next
    @random1 ||= NonRepetitiveRandomNumberGenerator.new
    @random2 ||= NonRepetitiveRandomNumberGenerator.new
    number1 = @random1.next(10)
    number2 = @random2.next(10)
    sum = number1 + number2
    options = [sum]
    3.times do |n|
      option = sum + (n+1) * (flip_coin ? 1 : -1)
      options.send(flip_coin ? :push  : :unshift, option)
    end
    new(question: "#{number1} + #{number2}",
        options_string: options.join('|'),
          correct_option: sum.to_s)
  end

  def options
    @options ||= options_string.split('|')
  end

  private

  def self.flip_coin
    Random.rand < 0.5
  end

  def options_uniqueness
    options.group_by{|e| e}.select{|k, v| v.size>1}.map{|k, v| k}.each do |opt|
      errors.add(:options_string, "Duplicate option #{opt}")
    end
  end

  def options_include_correct
    unless options.include? correct_option
      errors.add(:options_string, 'must include the correct option')
    end
  end
end
