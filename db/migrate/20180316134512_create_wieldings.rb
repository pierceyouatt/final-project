class CreateWieldings < ActiveRecord::Migration[5.1]
  def change
    create_table :wieldings do |t|
      t.integer :weapon_id
      t.integer :pc_id

      t.timestamps
    end
  end
end
