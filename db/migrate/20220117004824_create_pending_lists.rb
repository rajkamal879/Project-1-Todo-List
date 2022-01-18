class CreatePendingLists < ActiveRecord::Migration[7.0]
  def change
    create_table :pending_lists do |t|
    t.timestamps
    end
  end
end
