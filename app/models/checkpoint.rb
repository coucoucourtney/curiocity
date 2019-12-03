class Checkpoint < ApplicationRecord
  belongs_to :building
  belongs_to :route
end
