class Jump < ActiveRecord::Base
  belongs_to :run
  belongs_to :obstacle
end
