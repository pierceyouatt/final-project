class CreateMobs < ActiveRecord::Migration[5.1]
  def change
    create_table :mobs do |t|
      t.string :name
      t.integer :encounter_id
      t.integer :weapon_id
      t.integer :armor_id
      t.integer :initiative

      t.timestamps
    end
  end
end
