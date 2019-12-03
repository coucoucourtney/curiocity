json.routes do
  json.array! @routes do |route|
    json.extract! route, :id, :approximate_duration, :approximate_distance, :user_id, :start_long, :start_lat, :end_long, :end_lat, :radius_search, :main_picture, :district, :favoritable_score, :favoritable_total, :name, :metro_station_stop, :metro_station_start, :description, :created_at
    # json.user route.user, :id, :name, :location, :description, :phone_number, :open_id, :avatar
  end
end
