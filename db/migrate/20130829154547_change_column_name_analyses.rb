class ChangeColumnNameAnalyses < ActiveRecord::Migration
  def up
	rename_column :analyses, :type, :analysis_type
  end

  def down
  end
end
