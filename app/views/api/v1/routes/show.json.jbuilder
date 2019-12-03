json.extract! @route, :id, :approximate_duration, :approximate_distance, :user_id, :start_long, :start_lat, :end_long, :end_lat, :radius_search, :main_picture, :district, :favoritable_score, :favoritable_total, :name, :metro_station_stop, :metro_station_start, :description, :created_at
# if !@building.bookings.nil?
#   json.bookings do
#     json.array! @scooter.bookings do |booking|
#       json.extract! booking, :id, :confirmation, :user_id, :scooter_id, :booking_date
#       json.commented_at booking.created_at.strftime("%A, %b %d")
#     end
#   end

# json.user do
# json.extract! @building.user, :id, :name
