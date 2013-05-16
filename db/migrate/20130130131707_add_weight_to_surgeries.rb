class AddWeightToSurgeries < ActiveRecord::Migration
  def change
    add_column :surgeries, :weight, :decimal
  end
end
