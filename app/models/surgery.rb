class Surgery < ActiveRecord::Base
  attr_accessible :amount_in_ul, :surgery_type, :location, :operation_date, :titer, :drug_application, :weight
  belongs_to :mouse
end
