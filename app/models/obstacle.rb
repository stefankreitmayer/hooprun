class Obstacle < ActiveRecord::Base
  has_many :jumps
end
