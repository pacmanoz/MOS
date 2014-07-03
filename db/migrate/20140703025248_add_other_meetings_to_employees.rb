class AddOtherMeetingsToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :other_meetings, :decimal, precision: 3, scale: 1
  end
end
