require 'rails_helper'

RSpec.describe Obstacle, type: :model do
    let(:valid_example){
      Obstacle.new(question: '3+5', options_string: '2|8|17', correct_option: '8')
    }
  describe '.next' do
    it 'returns a valid obstacle' do
      expect(Obstacle.next).to be_a(Obstacle)
      expect(Obstacle.next).to be_valid
    end
  end
  describe '#options' do
    it 'returns the contents of options_string' do
      expect(valid_example.options).to eq %w( 2 8 17 )
    end
  end
  describe 'validation' do
    it 'does not allow ambiguous options' do
      obstacle = valid_example.dup
      obstacle.options_string = '5|5'
      expect(obstacle).to be_invalid
    end
    it 'ensures that the correct option is available' do
      obstacle = valid_example.dup
      obstacle.options_string = '2|17'
      expect(obstacle).to be_invalid
    end
  end
end
