class AddCagenum < ActiveRecord::Migration
  def up
    add_column :mice, :cage_number, :string
  end

  def down
    remove_column :mice, :cage_number
  end
end
