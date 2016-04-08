class User < ActiveRecord::Base

  # added to make login email case insensitive
  scope :ci_find, lambda { |attribute, value| where("lower(#{attribute}) = ?", value.downcase).first }

  has_secure_password
  validates_presence_of :email, :password, :full_name
  #                               ### added to make login email case insensitive
  validates_uniqueness_of :email, case_sensitive: false

end