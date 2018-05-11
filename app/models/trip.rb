class Trip < ApplicationRecord
  has_many :passenger, class_name: "User"
  belongs_to :driver, class_name: "User"
  has_many :trip_requests
  has_many :addresses
  
  accepts_nested_attributes_for :addresses
end