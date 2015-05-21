class Run < ActiveRecord::Base
  has_many :jumps

  def current_jump
    jumps.empty? ? next_jump : jumps.last
  end

  def next_jump
    jumps.create!(obstacle: Obstacle.next)
  end
end
