class CareTaker < ActiveRecord::Base
  validates :name, :age, :job, presence: true
  validates :name, uniqueness: true
  validates :age, numericality: true
end
