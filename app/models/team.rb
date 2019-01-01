class Team < ApplicationRecord
  has_secure_password
  has_many :users
  has_many :challenges, :dependent => :destroy
end
