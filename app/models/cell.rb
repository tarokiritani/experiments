class Cell < ActiveRecord::Base
  attr_accessible :brain_area, :cell_type, :channel, :depth, :intracellular, :layer, :pipette_offset, :pipette_resistance, :temparature, :experiment_number
  belongs_to :mouse
end
