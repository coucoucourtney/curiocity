class Building < ApplicationRecord
  acts_as_favoritable
  belongs_to :user, optional: true
  has_many :routes, through: :checkpoints
  has_many :checkpoints
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
