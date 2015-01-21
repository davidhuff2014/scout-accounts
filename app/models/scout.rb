class Scout < ActiveRecord::Base
  belongs_to :troop
  validates_uniqueness_of :full_name
end