class AddBreaksToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :breaks, :decimal, precision: 3, scale: 1
  end
end
