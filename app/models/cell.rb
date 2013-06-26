class Cell < ActiveRecord::Base
  attr_accessible :brain_area, :cell_type, :channel, :depth, :intracellular, :layer, :pipette_offset, :pipette_resistance, :temparature, :experiment_number, :comment
  belongs_to :mouse
  
   TYPE_OPTIONS = ["pyramid", "interneuron", "unknown", "tdTomato"].sort
   validates_inclusion_of :cell_type, :in => TYPE_OPTIONS
   
   INTRACELLULAR_OPTIONS = ["gluconate", "gluconate-Alexa 488, 10uM", "gluconate-Alexa 488, 20uM"].sort
   validates_inclusion_of :intracellular, :in => INTRACELLULAR_OPTIONS
   
end
