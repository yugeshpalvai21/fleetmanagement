class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :model
      t.integer :year
      t.integer :chassis_number
      t.string :color
      t.datetime :registration_date
      t.integer :odometer_reading
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
