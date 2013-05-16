class RemoveInjectedMaterialFromSurgeries < ActiveRecord::Migration
  def up
    remove_column :surgeries, :injected_material
      end

  def down
    add_column :surgeries, :injected_material, :string
  end
end
