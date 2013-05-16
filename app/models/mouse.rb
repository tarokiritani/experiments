class Mouse < ActiveRecord::Base
  attr_accessible :cage_number, :date_of_birth, :sex, :species_strain, :number
  has_many :surgeries, dependent: :destroy
  has_many :cells, dependent: :destroy
  belongs_to :user
end
