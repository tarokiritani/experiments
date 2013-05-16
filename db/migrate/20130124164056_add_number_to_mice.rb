class AddNumberToMice < ActiveRecord::Migration
  def change
    add_column :mice, :number, :integer
  end
end
