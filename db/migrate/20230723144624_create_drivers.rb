class CreateDrivers < ActiveRecord::Migration[5.2]
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :license_number
      t.references :tracking_unit, foreign_key: true

      t.timestamps
    end
  end
end
