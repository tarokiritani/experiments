class CreateCells < ActiveRecord::Migration
  def change
    create_table :cells do |t|
      t.integer :channel
      t.string :cell_type
      t.string :brain_area
      t.string :layer
      t.string :intracellular
      t.decimal :pipette_offset
      t.decimal :pipette_resistance
      t.integer :depth
      t.decimal :temparature

      t.timestamps
    end
  end
end
