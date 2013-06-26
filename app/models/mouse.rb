class Mouse < ActiveRecord::Base
  attr_accessible :cage_number, :date_of_birth, :sex, :species_strain, :number, :comment
  has_many :surgeries, dependent: :destroy
  has_many :cells, dependent: :destroy
  belongs_to :user
  
  SPECIES_OPTIONS = ["mouse-c57/bl6", "tdTomato", "Gad2-ires-Cre/Rosa-CreR-tdTomato", "etv1-cre", "PV-Cre/ROSA-Cre-tdTomato"].sort
  validates_inclusion_of :species_strain, :in => SPECIES_OPTIONS
end
