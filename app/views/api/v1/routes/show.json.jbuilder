json.extract! @route, :id, :approximate_duration, :approximate_distance, :user_id, :start_long, :start_lat, :end_long, :end_lat, :radius_search, :main_picture, :district, :favoritable_score, :favoritable_total, :name, :metro_station_stop, :metro_station_start, :description, :created_at

json.favorited @route.favorited_by?(@current_user)
json.favorited_total @route.f_total

  json.checkpoints do
    json.array! @route.checkpoints do |checkpoint|
      json.extract! checkpoint, :id
      json.extract! checkpoint.building, :id, :name, :year, :architects, :neighborhood, :metro_stop, :photo_slider, :address, :latitude, :longitude, :architectural_style, :contributor_author, :description, :fun_facts, :main_photo_credit, :user_id, :city, :fact_checked, :district, :favoritable_total, :favoritable_score, :main_picture
    end
    json.favorited do 
      json.extract! @favorited, :favorited
    end
  end

# if !@building.bookings.nil?
#   json.bookings do
#     json.array! @scooter.bookings do |booking|
#       json.extract! booking, :id, :confirmation, :user_id, :scooter_id, :booking_date
#       json.commented_at booking.created_at.strftime("%A, %b %d")
#     end
#   end

# json.buildings do
# json.extract! @building.user, :id, :name
