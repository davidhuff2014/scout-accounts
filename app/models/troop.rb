class Troop < ActiveRecord::Base
  has_many :scouts
#TODO:  validates_uniqueness_of :charter_sponsor
end