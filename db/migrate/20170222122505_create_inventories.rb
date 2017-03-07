class CreateInventories < ActiveRecord::Migration[5.0]
  def change
    create_table :inventories do |t|
      t.string :name
      t.date :start
      t.date :finish

      t.timestamps
    end
  end
end
