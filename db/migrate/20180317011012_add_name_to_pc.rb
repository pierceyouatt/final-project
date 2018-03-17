class AddNameToPc < ActiveRecord::Migration[5.1]
  def change
    add_column :pcs, :name, :string
  end
end
