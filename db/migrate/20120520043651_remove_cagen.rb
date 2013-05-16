class RemoveCagen < ActiveRecord::Migration
  def up
    remove_column :mice, :cagen_number
  end

  def down
    add_column :mice, :cagen_number, :string
  end
end
