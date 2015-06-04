class ChangeStringToDateTimes < ActiveRecord::Migration
  def change
  	change_column :studios, :time_booked_start, :datetime
  	change_column :studios, :time_booked_end, :datetime
  	change_column :studios, :user_id, :integer
  end
end
