class AddHuddleToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :huddle, :decimal, precision: 3, scale: 1
  end
end
