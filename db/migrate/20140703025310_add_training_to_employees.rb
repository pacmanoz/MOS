class AddTrainingToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :training, :decimal, precision: 3, scale: 1
  end
end
