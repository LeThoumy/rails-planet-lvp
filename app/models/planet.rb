class Planet < ApplicationRecord
  #has many and so on relations for the
  has_many_attached :photos
  belongs_to :user
  has_many :bookings, dependent: :destroy

end
