class RemoveJumpsKeyFromRun < ActiveRecord::Migration
  def change
    remove_column :runs, :jumps_id
  end
end
