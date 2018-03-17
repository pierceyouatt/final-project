class CreateArmors < ActiveRecord::Migration[5.1]
  def change
    create_table :armors do |t|
      t.string :name
      t.string :armortype
      t.integer :armorac
      t.integer :armorstr

      t.timestamps
    end
  end
end
