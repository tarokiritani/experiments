class Surgery < ActiveRecord::Base
  attr_accessible :amount_in_ul, :surgery_type, :location, :operation_date, :titer, :drug_application, :weight, :comment
  belongs_to :mouse
  
  SURGERY_OPTIONS = ["lumafluor red", "intrinsic imaging", "lumafluor blue", "CTB488", "implantation", "craniotomy", "euthanasia", "tamoxifen injection (100mg/kg)", "cardiac perfusion", "chronic cranial window", "15min head fix training", "30min head fix training", "1h head fix training", "2h head fix training", "virus injection - floxed GCaMP6s", "slicing of fixed brain", "DAPI staining", "OGB-1 injection"].sort  
  validates_inclusion_of :surgery_type, :in => SURGERY_OPTIONS
  
end
