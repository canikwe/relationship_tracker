class Kid < ActiveRecord::Base
  #Associations
  has_many :relationships
  has_many :care_takers, through: :relationships
  accepts_nested_attributes_for :care_takers

  # Validations
  validates :name, presence: { message: " - must be given, please." }
  validates :age, presence: { message: " - must be given, please."}
  validate :is_an_adult, :age_correct

  # Custom Validation Methods
  def is_an_adult
    if !(self.age.nil?) && (self.age < 18 && self.adult == true)
      errors.add(:adult, " - please enter a valid age, or change adult status.")
    end
  end

  def age_correct
    if !(self.age.nil?) && (self.age < 1 || self.age > 100)
      errors.add(:age, " - please enter and age between 1 and 100.")
    end
  end

  # Custom Methods
  def adult?
    if self.adult == false
      "Mind your care takers."
    else "You are free to move about as you please."
    end
  end
end
