class AddMaxFavoriteHighTemperatureToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :max_favorite_high_temperature, :float, null: false
  end
end
