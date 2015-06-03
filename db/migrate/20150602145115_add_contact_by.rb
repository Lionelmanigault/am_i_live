class AddContactBy < ActiveRecord::Migration
  def change
  		add_column :users, :contact_by, :string
  end
end
