class Cell < ActiveRecord::Base
  attr_accessible :brain_area, :cell_type, :channel, :depth, :intracellular, :layer, :pipette_offset, :pipette_resistance, :temparature, :experiment_number, :comment
  belongs_to :mouse
  has_many :analyses, dependent: :destroy
  
   TYPE_OPTIONS = ["pyramid", "interneuron", "unknown", "tdTomato", "NA"].sort
   validates_inclusion_of :cell_type, :in => TYPE_OPTIONS
   
   INTRACELLULAR_OPTIONS = ["gluconate", "gluconate-Alexa 488, 10uM", "gluconate-Alexa 488, 20uM", "gluconate-Alexa 488, 10uM-biocytin, 0.1%", "gluconate-Alexa 514, 10uM", "gluconate-Alexa 514, 5uM", "gluconate, Alexa 488 5uM, InP/ZnS 620 coated", "gluconate, Alexa 88 10uM, CdSe/ZnS 590 coated","NA"].sort
   validates_inclusion_of :intracellular, :in => INTRACELLULAR_OPTIONS
   
end
