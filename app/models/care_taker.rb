class CareTaker < ActiveRecord::Base
  # Associations
  has_many :relationships
  has_many :kids, through: :relationships
  accepts_nested_attributes_for :kids

  # Validations
  validates :name, :age, :job, presence: true
  validates :name, uniqueness: true
  validates :age, numericality: true
end
