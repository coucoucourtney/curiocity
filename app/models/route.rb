class Route < ApplicationRecord
  belongs_to :user, optional: true
  has_many :buildings, through: :checkpoints
  has_many :checkpoints
end
