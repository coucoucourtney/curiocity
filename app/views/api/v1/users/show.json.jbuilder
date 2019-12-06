json.extract! @user,  :id, :open_id, :wechat_name, :avatar, :email, :language, :gender, :level, :description, :favoritor_score, :favoritor_total, :favoritable_score, :favoritable_total

json.favorite_buildings do
  json.array! @user.favorited_buildings do |building|
    json.extract! building, :id, :name, :year, :architects, :neighborhood, :metro_stop, :photo_slider, :address, :latitude, :longitude, :architectural_style, :contributor_author, :description, :fun_facts, :main_photo_credit, :user_id, :city, :fact_checked, :district, :favoritable_total, :favoritable_score, :main_picture
  end
end

json.favorited_routes do
  json.array! @user.favorited_routes do |route|
    json.extract! route, :id, :approximate_duration, :approximate_distance, :user_id, :start_long, :start_lat, :end_long, :end_lat, :radius_search, :main_picture, :district, :favoritable_score, :favoritable_total, :name, :metro_station_stop, :metro_station_start, :description, :created_at
  end
end



#   if !@user.buildings.nil?
#     json.buildings do
#       json.array! @user.buildings do |building|
#         json.extract! building, :id, :name, :year, :architects, :neighborhood, :metro_stop, :photo_slider, :address, :latitude, :longitude, :architectural_style, :contributor_author, :description, :fun_facts, :main_photo_credit, :user_id, :city, :fact_checked, :district, :favoritable_total, :favoritable_score, :main_picture
#       end
#     end
# end
