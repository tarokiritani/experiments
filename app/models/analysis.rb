class Analysis < ActiveRecord::Base
  attr_accessible :comment, :file, :analysis_type
  belongs_to :cell
  
  TYPE_OPTIONS = ["Ca imaging", "Ca imaging with movie", "vstep", "istep", "Snap 2p", "free whisking", "active touch", "poisson current, 500pA"].sort
  validates_inclusion_of :analysis_type, :in => TYPE_OPTIONS
end
