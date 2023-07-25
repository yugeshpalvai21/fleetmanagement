class CreateWastes < ActiveRecord::Migration[6.0]
  def change
    create_table :wastes do |t|
      t.string :type
      t.decimal :quantity
      t.string :disposal_method
      t.date :date

      # Add foreign keys to link wastes to specific vehicles or assets
      # t.belongs_to :vehicle
      # t.belongs_to :asset

      t.timestamps
    end
  end
end
