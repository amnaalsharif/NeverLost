class CreateDetections < ActiveRecord::Migration
  def change
    create_table :detections do |t|
      t.integer :tag_id
      t.integer :sensor_id
      t.datetime :time

      t.timestamps null: false
    end
  end
end
