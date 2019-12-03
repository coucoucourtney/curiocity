class User < ApplicationRecord
  has_many :buildings
  has_many :routes
  validates :open_id, presence: true
end
