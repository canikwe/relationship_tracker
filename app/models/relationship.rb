class Relationship < ActiveRecord::Base
  # Associations
  belongs_to :kid
  belongs_to :care_taker
end
