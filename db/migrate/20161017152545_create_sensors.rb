class CreateSensors < ActiveRecord::Migration
  def change
    create_table :sensors do |t|
      t.integer :sensor_id
      t.datetime :date
      t.text :coordinate

      t.timestamps null: false
    end
  end
end
