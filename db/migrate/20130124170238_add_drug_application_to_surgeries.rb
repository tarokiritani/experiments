class AddDrugApplicationToSurgeries < ActiveRecord::Migration
  def change
    add_column :surgeries, :drug_application, :string
  end
end
