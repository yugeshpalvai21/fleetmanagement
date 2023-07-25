class CreateRentalVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :rental_vehicles do |t|
      t.string :category
      t.string :make
      t.string :model
      t.string :registration_number
      t.decimal :rental_rate
      t.boolean :available

      t.timestamps
    end
  end
end
