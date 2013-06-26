class AddCommentToMice < ActiveRecord::Migration
  def change
    add_column :mice, :comment, :text
  end
end
