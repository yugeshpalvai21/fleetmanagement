class AddOdometerToVehicles < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicles, :odometer, :decimal
  end
end
