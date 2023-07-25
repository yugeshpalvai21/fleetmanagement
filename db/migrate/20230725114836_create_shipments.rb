class CreateShipments < ActiveRecord::Migration[6.0]
  def change
    create_table :shipments do |t|
      t.string :tracking_number
      t.string :origin
      t.string :destination
      t.date :date
      t.string :status

      # Add foreign key to link shipments to specific vehicles from the vehicles table
      # t.belongs_to :vehicle

      t.timestamps
    end
  end
end
