class Building < ApplicationRecord
  acts_as_favoritable
  belongs_to :user, optional: true
  has_many :routes, through: :checkpoints
  has_many :checkpoints

#   geocoded_by :address
#   after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_all,
    against: [ :name, :architects, :neighborhood, :architectural_style, :metro_stop, :address ],
    using: {
      tsearch: { prefix: true } # <-- now `incomplete searches` will return something!
    }
end
