class AddingUserIdToInventories < ActiveRecord::Migration[5.0]
  def change
    add_column :inventories, :user_id, :integer 
  end
end
