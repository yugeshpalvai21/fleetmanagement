class CreateLicenceAdministrations < ActiveRecord::Migration[5.2]
  def change
    create_table :licence_administrations do |t|
      t.references :vehicle, foreign_key: true
      t.string :licence_number
      t.date :expiry_date

      t.timestamps
    end
  end
end
