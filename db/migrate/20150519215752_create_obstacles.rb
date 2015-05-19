class CreateObstacles < ActiveRecord::Migration
  def change
    create_table :obstacles do |t|
      t.text :question, null: false
      t.text :options_string, null: false
      t.string :correct_option, null: false

      t.timestamps null: false
    end
  end
end
