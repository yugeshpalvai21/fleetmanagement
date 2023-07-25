class CreateAssets < ActiveRecord::Migration[6.0]
  def change
    create_table :assets do |t|
      t.string :name
      t.text :description
      t.string :category

      # Add foreign keys if assets can be assigned to specific customers or locations
      # t.belongs_to :customer
      # t.belongs_to :location

      t.timestamps
    end
  end
end
