class Troop < ActiveRecord::Base
  has_many :scouts
  validates_uniqueness_of :troop_number
end