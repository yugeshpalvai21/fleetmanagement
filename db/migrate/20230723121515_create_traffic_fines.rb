class CreateTrafficFines < ActiveRecord::Migration[5.2]
  def change
    create_table :traffic_fines do |t|
      t.references :vehicle, foreign_key: true
      t.date :fine_date
      t.decimal :amount
      t.text :description

      t.timestamps
    end
  end
end
