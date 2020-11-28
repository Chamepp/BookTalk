class Admin < ApplicationRecord
  has_secure_password
  validates_presence_of :username
  validates_uniqueness_of :username
end
