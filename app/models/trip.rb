class Trip < ApplicationRecord
  has_many :passenger, class_name: "User"
  belongs_to :driver, class_name: "User"
  has_many :trip_requests

end