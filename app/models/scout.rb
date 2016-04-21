class Scout < ActiveRecord::Base
  belongs_to :troop
  validates_uniqueness_of :full_name
  validates_presence_of :full_name, :troop_id
end