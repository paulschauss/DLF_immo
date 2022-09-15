class CreateHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :house_type
      t.text :description
      t.integer :price
      t.integer :area
      t.integer :bed
      t.integer :bathroom
      t.integer :outdoor_area

      t.timestamps
    end
  end
end
