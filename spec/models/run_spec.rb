require 'rails_helper'

RSpec.describe Run, type: :model do
  it 'provides the current jump' do
    expect(Run.create!.current_jump).to be_a_valid(Jump)
  end
end
