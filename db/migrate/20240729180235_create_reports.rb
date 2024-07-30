class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.string :name
      t.integer :year
      t.string :image
      t.integer :position, default: 0

      t.timestamps
    end
  end
end
