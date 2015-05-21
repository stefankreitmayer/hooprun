require 'rails_helper'

RSpec.describe Run, type: :model do
  it 'provides the current jump' do
    expect(Run.create!.current_jump).to be_a_valid(Jump)
  end
  it 'provides more jumps' do
    run = Run.create!
    expect(run.jumps).to be_empty
    expect(run.next_jump).to be_a_valid(Jump)
    expect(run.jumps).not_to be_empty
  end
end
