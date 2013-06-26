class AddCommentToCells < ActiveRecord::Migration
  def change
    add_column :cells, :comment, :text
  end
end
