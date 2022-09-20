class AddStateToHouses < ActiveRecord::Migration[6.0]
  def change
    add_column :houses, :state, :string
  end
end
