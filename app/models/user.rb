class User < ApplicationRecord
  acts_as_favoritable
  acts_as_favoritor
  has_many :buildings
  has_many :routes
  validates :open_id, presence: true
end
