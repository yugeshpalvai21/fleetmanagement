class CreateAccidentReports < ActiveRecord::Migration[5.2]
  def change
    create_table :accident_reports do |t|
      t.references :vehicle, foreign_key: true
      t.text :description
      t.date :date

      t.timestamps
    end
  end
end
