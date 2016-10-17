class CreateRfidTags < ActiveRecord::Migration
  def change
    create_table :rfid_tags do |t|
      t.integer :tag_id

      t.timestamps null: false
    end
  end
end
