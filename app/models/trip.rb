class Trip < ApplicationRecord
  belongs_to :driver
  has_many :passenger
end
