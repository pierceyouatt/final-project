class CreateWeapons < ActiveRecord::Migration[5.1]
  def change
    create_table :weapons do |t|
      t.string :name
      t.boolean :simple
      t.boolean :ranged
      t.integer :mindamage
      t.string :maxdamage

      t.timestamps
    end
  end
end
