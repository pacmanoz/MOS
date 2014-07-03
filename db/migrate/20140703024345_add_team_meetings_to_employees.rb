class AddTeamMeetingsToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :team_meetings, :decimal, precision: 3, scale: 1
  end
end
