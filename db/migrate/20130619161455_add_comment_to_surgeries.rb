class AddCommentToSurgeries < ActiveRecord::Migration
  def change
    add_column :surgeries, :comment, :text
  end
end
