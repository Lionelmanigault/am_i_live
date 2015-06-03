class AddSocialMedia < ActiveRecord::Migration
  def change
  	add_column :users, :social_madia, :text
  end
end
