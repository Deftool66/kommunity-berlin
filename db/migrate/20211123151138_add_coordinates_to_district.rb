class AddCoordinatesToDistrict < ActiveRecord::Migration[6.0]
  def change
    add_column :districts, :longitude, :float
    add_column :districts, :latitude, :float
  end
end
