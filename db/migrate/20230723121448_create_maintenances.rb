class CreateMaintenances < ActiveRecord::Migration[5.2]
  def change
    create_table :maintenances do |t|
      t.references :vehicle, foreign_key: true
      t.text :description
      t.date :maintenance_date
      t.decimal :cost

      t.timestamps
    end
  end
end
