class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.string :date
      t.decimal :hours_worked, precision: 5, scale: 2
      t.decimal :hours_recorded, precision: 5, scale: 2
      t.string :notes

      t.timestamps
    end
  end
end
