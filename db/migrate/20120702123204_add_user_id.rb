class AddUserId < ActiveRecord::Migration
  def up
    add_column :mice, :user_id, :integer

  end

  def down
    remove_column :mice, :user_id
  end
end
