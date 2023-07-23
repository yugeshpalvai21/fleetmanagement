class CreateTrackingUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :tracking_units do |t|
      t.references :vehicle, foreign_key: true
      t.string :tracking_code
      t.datetime :last_reported_at

      t.timestamps
    end
  end
end
