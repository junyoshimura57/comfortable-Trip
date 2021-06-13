class RenameFavoriteHighTemperatureColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :favorite_high_temperature, :min_favorite_high_temperature
  end
end
