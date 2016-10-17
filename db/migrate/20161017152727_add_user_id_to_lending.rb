class AddUserIdToLending < ActiveRecord::Migration
  def change
    add_column :lendings, :user_id, :integer
    add_column :lendings, :from, :datetime
    add_column :lendings, :to, :datetime
  end
end
