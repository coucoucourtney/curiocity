json.routes do
  json.array! @routes do |route|
    json.extract! route, :id, :approximate_duration, :approximate_distance, :user_id, :start_long, :start_lat, :end_long, :end_lat, :radius_search, :main_picture, :district, :favoritable_score, :favoritable_total, :name, :metro_station_stop, :metro_station_start, :description, :created_at
    json.checkpoints do
      json.array! route.checkpoints do |checkpoint|
        json.extract! checkpoint, :id
        json.extract! checkpoint.building, :id, :name, :year, :architects, :neighborhood, :metro_stop, :photo_slider, :address, :latitude, :longitude, :architectural_style, :contributor_author, :description, :fun_facts, :main_photo_credit, :user_id, :city, :fact_checked, :district, :favoritable_total, :favoritable_score, :main_picture, :old_address
      end
    end
    if @user_signed_in
      json.favorited route.favorited_by?(@user_signed_in)
      json.favoritable_total route.f_total
    end
     # json.buildings route.buildings, :id, :name, :year, :architects, :neighborhood, :metro_stop, :photo_slider, :address, :latitude, :longitude, :architectural_style, :contributor_author, :description, :fun_facts, :main_photo_credit, :user_id, :city, :fact_checked, :district, :favoritable_total, :favoritable_score, :main_picture
  end
end
