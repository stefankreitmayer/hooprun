class Obstacle < ActiveRecord::Base
  has_many :jumps

  def self.random
    new(question: '3+5', options_string: '2|8|17', correct_option: '8')
  end

  def options
    @options ||= options_string.split('|')
  end
end
