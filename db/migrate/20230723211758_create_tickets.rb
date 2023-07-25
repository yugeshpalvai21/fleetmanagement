class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :subject
      t.text :description
      t.string :status

      t.timestamps
    end
  end
end
