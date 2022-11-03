class CreateSlotCollections < ActiveRecord::Migration
  def change
    create_table :slot_collections do |t|
      t.references :slot, index: true, foreign_key: true
      t.datetime :start_time
      t.datetime :end_time
      t.integer :capacity

      t.timestamps null: false
    end
  end
end
