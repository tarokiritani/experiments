class AddMouseId < ActiveRecord::Migration
  def up
    add_column :surgeries, :mouse_id, :integer
  end

  def down
    remove_column :surgeries, :mouse_id
  end
end
