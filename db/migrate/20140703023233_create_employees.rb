class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.boolean :at_work
      t.decimal :working_hours, precision: 3, scale: 1

      t.timestamps
    end
  end
end
