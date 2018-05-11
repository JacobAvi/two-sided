class TripRequest < ApplicationRecord
  belongs_to :user
  belongs_to :trip
  has_many :addresses
end
