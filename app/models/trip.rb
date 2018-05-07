class Trip < ApplicationRecord
  belongs_to :driver
  has_many :passengers
  has_many :trip_requests
end