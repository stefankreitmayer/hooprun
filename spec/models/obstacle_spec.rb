require 'rails_helper'

RSpec.describe Obstacle, type: :model do
  describe '.random' do
    it 'returns a valid obstacle' do
      expect(Obstacle.random).to be_a(Obstacle)
      expect(Obstacle.random).to be_valid
    end
  end
  describe '#options' do
    let(:valid_example){
      Obstacle.new(question: '3+5', options_string: '2|8|17', correct_option: '8')
    }
    it 'returns the contents of options_string' do
      expect(valid_example.options).to eq %w( 2 8 17 )
    end
  end
end
