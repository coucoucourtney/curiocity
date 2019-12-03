json.extract! @building, :id, :name, :year, :architects, :neighborhood, :metro_stop, :photo_slider, :address, :latitude, :longitude, :architectural_style, :contributor_author, :description, :fun_facts, :main_photo_credit, :user_id, :city, :fact_checked, :district, :favoritable_total, :favoritable_score
# if !@building.bookings.nil?
#   json.bookings do
#     json.array! @scooter.bookings do |booking|
#       json.extract! booking, :id, :confirmation, :user_id, :scooter_id, :booking_date
#       json.commented_at booking.created_at.strftime("%A, %b %d")
#     end
#   end

# json.user do
# json.extract! @building.user, :id, :name
