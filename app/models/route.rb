class Route < ApplicationRecord
  acts_as_favoritable
  belongs_to :user, optional: true
  has_many :buildings, through: :checkpoints
  has_many :checkpoints
end
