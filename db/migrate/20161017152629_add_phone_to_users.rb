class AddPhoneToUsers < ActiveRecord::Migration
  def change
    add_column :users, :phone, :text
    add_column :users, :name, :text
  end
end
