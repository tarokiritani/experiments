class AddExperimentNumberToCells < ActiveRecord::Migration
  def change
    add_column :cells, :experiment_number, :string
  end
end
