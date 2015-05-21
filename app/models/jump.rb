class Jump < ActiveRecord::Base
  belongs_to :run
  belongs_to :obstacle

  def correct_option
    obstacle.correct_option
  end
end
