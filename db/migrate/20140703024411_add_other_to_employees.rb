class AddOtherToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :other, :decimal, precision: 3, scale: 1
  end
end
