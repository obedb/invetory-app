class AddingColumnstoTheUserTable < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :last_name, :string
    add_column :users, :country, :string
    add_column :users, :password, :string
  end
end
