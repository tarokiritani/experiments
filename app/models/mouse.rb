class Mouse < ActiveRecord::Base
  attr_accessible :cage_number, :date_of_birth, :sex, :species_strain, :number, :comment
  has_many :surgeries, dependent: :destroy
  has_many :cells, dependent: :destroy
  belongs_to :user
  
  SPECIES_OPTIONS = ["mouse-c57/bl6", "tdTomato", "Gad2-ires-Cre/Rosa-CreR-tdTomato", "B6(Cg)-Etv1<tm1.1(cre/ERT2)Zjh>/J", "B6(Cg)-Etv1<tm1.1(cre/ERT2)Zjh>/J/ROSA-CreRtomato", "PV-Cre/ROSA-Cre-tdTomato", "SOM-ires-Cre", "Floxed-GCaMP3/EMX1", "SOM-ires-Cre/ROSA-CreR-tdTomato", "VIP-ires-Cre/ROSA-CreR-tdTomato"].sort
  validates_inclusion_of :species_strain, :in => SPECIES_OPTIONS
end
