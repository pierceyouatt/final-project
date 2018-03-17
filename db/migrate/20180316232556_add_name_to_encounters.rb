class AddNameToEncounters < ActiveRecord::Migration[5.1]
  def change
    add_column :encounters, :name, :string
  end
end
