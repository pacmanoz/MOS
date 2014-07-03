class AddOneOnOnesToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :one_on_ones, :decimal, precision: 3, scale: 1
  end
end
