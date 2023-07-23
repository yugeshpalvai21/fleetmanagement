class CreateVehicleVerifications < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_verifications do |t|
      t.integer :vehicle_id
      t.date :report_date
      t.text :condition
      t.decimal :price
      t.string :model
      t.string :make
      t.string :color

      t.timestamps
    end
  end
end
