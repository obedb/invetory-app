class RemovingColumns < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :sector, :string
    remove_column :users, :cell, :string
  end
end
