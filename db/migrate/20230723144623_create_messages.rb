class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :content
      t.references :tracking_unit, foreign_key: true

      t.timestamps
    end
  end
end
