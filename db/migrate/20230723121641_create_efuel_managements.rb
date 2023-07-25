class CreateEfuelManagements < ActiveRecord::Migration[5.2]
  def change
    create_table :efuel_managements do |t|
      t.references :vehicle, foreign_key: true
      t.string :fuel_type
      t.decimal :fuel_amount
      t.date :fuel_date

      t.timestamps
    end
  end
end
