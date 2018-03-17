class CreatePcs < ActiveRecord::Migration[5.1]
  def change
    create_table :pcs do |t|
      t.integer :user_id
      t.integer :str
      t.integer :strmod
      t.integer :dex
      t.integer :dexmod
      t.integer :con
      t.integer :int
      t.integer :wis
      t.integer :cha
      t.boolean :shield
      t.integer :ac
      t.integer :initiative

      t.timestamps
    end
  end
end
