class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.string :province_state
      t.string :sector
      t.string :cell
      t.string :village
      t.string :house_number

      t.timestamps
    end
  end
end
