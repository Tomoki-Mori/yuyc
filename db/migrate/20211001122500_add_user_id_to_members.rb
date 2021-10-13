class AddUserIdToMembers < ActiveRecord::Migration[6.1]
  def change
    add_column :members, :user_id, :integer
  end
end
