class CreateJumps < ActiveRecord::Migration
  def change
    create_table :jumps do |t|
      t.belongs_to :run, index: true, foreign_key: true, null: false
      t.belongs_to :obstacle, index: true, foreign_key: true, null: false
      t.string :choice

      t.timestamps null: false
    end
  end
end
