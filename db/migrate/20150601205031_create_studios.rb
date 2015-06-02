class CreateStudios < ActiveRecord::Migration
  def change
    create_table :studios do |t|
      t.string :studio_num
      t.string :time_booked_start
      t.string :time_booked_end
      t.string :user_id

      t.timestamps null: false
    end
  end
end
