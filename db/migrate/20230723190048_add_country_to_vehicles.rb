class AddCountryToVehicles < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicles, :country, :string
  end
end
