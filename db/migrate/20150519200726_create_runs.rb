class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.references :jumps, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
