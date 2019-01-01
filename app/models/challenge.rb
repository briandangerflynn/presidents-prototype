class Challenge < ApplicationRecord
  belongs_to :team
  has_many :presidents, :dependent => :destroy
end
