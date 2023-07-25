class CreateJobCards < ActiveRecord::Migration[5.2]
  def change
    create_table :job_cards do |t|
      t.references :vehicle, foreign_key: true
      t.text :description
      t.string :job_type
      t.date :date

      t.timestamps
    end
  end
end
