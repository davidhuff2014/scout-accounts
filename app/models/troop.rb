class Troop < ActiveRecord::Base
  has_many :scouts
  validates_uniqueness_of :number
end