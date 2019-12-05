class Route < ApplicationRecord
  acts_as_favoritable
  belongs_to :user, optional: true
  has_many :buildings, through: :checkpoints
  has_many :checkpoints

  def f_total
    Favorite.for_favoritable(self).count
  end
end
