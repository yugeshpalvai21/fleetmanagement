class CreateGeofences < ActiveRecord::Migration[5.2]
  def change
    create_table :geofences do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.integer :radius

      t.timestamps
    end
  end
end
