class AddMouseIdToCells < ActiveRecord::Migration
  def change
    add_column :cells, :mouse_id, :integer
  end
end
