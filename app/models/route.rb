class Route < ApplicationRecord
  acts_as_favoritable
  belongs_to :user, optional: true
  has_many :buildings, through: :checkpoints
  has_many :checkpoints


  def f_total
    Favorite.for_favoritable(self).count
  end

  include PgSearch::Model
  pg_search_scope :global_search,
    # against: [:name, :approximate_duration, :approximate_distance, :district, :metro_station_stop,
    #   :metro_station_start],
    # associated_against: {
    #   building: [ :name, :architects, :neighborhood, :architectural_style, :metro_stop, :address ]
    # },
    # using: {
    #   tsearch: { prefix: true }
    #   } # <-- now `incomplete searches` will return something!

    against: [:name, :approximate_duration, :approximate_distance, :district, :metro_station_stop,
       :metro_station_start],
    using: {
      tsearch: { prefix: true } # <-- now `incomplete searches` will return something!
    }
end
