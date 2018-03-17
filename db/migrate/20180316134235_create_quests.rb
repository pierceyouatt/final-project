class CreateQuests < ActiveRecord::Migration[5.1]
  def change
    create_table :quests do |t|
      t.integer :campaign_id
      t.integer :pc_id

      t.timestamps
    end
  end
end
