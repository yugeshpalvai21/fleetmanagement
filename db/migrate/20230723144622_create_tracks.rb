class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.float :latitude
      t.float :longitude
      t.datetime :timestamp
      t.references :tracking_unit, foreign_key: true

      t.timestamps
    end
  end
end
