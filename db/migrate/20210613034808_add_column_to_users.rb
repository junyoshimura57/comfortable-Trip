class AddColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :username, :string, null: false
    add_column :users, :living_prefecture, :integer, null: false
    add_column :users, :favorite_high_temperature, :float, null: false
    add_column :users, :favorite_precipitation, :float, null: false
    add_column :users, :admin, :boolean, null: false
  end
end
