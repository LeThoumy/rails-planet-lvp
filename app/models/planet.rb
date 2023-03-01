class Planet < ApplicationRecord
  #has many and so on relations for the
  belongs_to :user
  has_many :bookings
end
