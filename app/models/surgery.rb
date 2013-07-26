class Surgery < ActiveRecord::Base
  attr_accessible :amount_in_ul, :surgery_type, :location, :operation_date, :titer, :drug_application, :weight, :comment
  belongs_to :mouse
  
  SURGERY_OPTIONS = ["lumafluor red", "lumafluor blue", "CTB488", "implantation", "craniotomy", "euthanasia", "tamoxifen injection (100mg/kg)", "cardiac perfusion", "chronic cranial window"].sort  
  validates_inclusion_of :surgery_type, :in => SURGERY_OPTIONS
  
end
