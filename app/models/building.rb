class Building < ApplicationRecord
  acts_as_favoritable
  belongs_to :user, optional: true
  has_many :routes, through: :checkpoints
  has_many :checkpoints
  validates :name, presence: true, uniqueness: true

  before_validation :capitalize_names

  def capitalize_names
    self.name = name.titleize
  end

  #   geocoded_by :address
  #   after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_all,
    against: [ :name, :architects, :neighborhood, :architectural_style, :metro_stop, :address ],
  using: {
    tsearch: { prefix: true } # <-- now `incomplete searches` will return something!
  }

  def f_total
    Favorite.for_favoritable(self).count
  end
end
