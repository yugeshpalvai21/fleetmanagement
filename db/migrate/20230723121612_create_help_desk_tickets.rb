class CreateHelpDeskTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :help_desk_tickets do |t|
      t.string :title
      t.text :description
      t.string :status
      t.string :priority

      t.timestamps
    end
  end
end
