class Run < ActiveRecord::Base
  has_many :jumps

  def current_jump
    jumps.create(obstacle: Obstacle.random) if jumps.empty?
    jumps.last
  end
end
