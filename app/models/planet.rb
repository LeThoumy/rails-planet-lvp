class Planet < ApplicationRecord
  #has many and so on relations for the
  has_one_attached :photo
  belongs_to :user
  has_many :bookings
end
