class CreateGirdings < ActiveRecord::Migration[5.1]
  def change
    create_table :girdings do |t|
      t.integer :armor_id
      t.integer :pc_id

      t.timestamps
    end
  end
end
