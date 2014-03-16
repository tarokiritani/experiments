class AddCellIdToAnalyses < ActiveRecord::Migration
  def change
    add_column :analyses, :cell_id, :integer
  end
end
