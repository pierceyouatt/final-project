class AddHpToMobs < ActiveRecord::Migration[5.1]
  def change
    add_column :mobs, :hp, :integer
  end
end
