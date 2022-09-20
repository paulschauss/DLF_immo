class AddCityAndRegionToHouses < ActiveRecord::Migration[6.0]
  def change
    add_column :houses, :city, :string
    add_column :houses, :region, :string
  end
end
