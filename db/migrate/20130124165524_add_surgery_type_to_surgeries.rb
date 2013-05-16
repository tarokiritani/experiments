class AddSurgeryTypeToSurgeries < ActiveRecord::Migration
  def change
    add_column :surgeries, :surgery_type, :string
  end
end
