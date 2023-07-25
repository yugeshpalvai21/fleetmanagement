class CreateTrackingUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :tracking_units do |t|
      t.string :name
      t.string :serial_number
      t.string :status

      t.timestamps
    end
  end
end
