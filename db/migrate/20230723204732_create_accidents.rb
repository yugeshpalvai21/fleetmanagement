class CreateAccidents < ActiveRecord::Migration[5.2]
  def change
    create_table :accidents do |t|
      t.string :some_column
      t.integer :another_column

      t.timestamps
    end
  end
end
