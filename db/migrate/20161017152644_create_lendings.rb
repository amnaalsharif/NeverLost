class CreateLendings < ActiveRecord::Migration
  def change
    create_table :lendings do |t|
      t.integer :tag_id

      t.timestamps null: false
    end
  
  end
end
