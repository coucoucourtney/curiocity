json.buildings do
  json.array! @buildings do |building|
    json.extract! building, :id, :name, :year, :architects, :neighborhood, :metro_stop, :photo_slider, :address, :latitude, :longitude, :architectural_style, :contributor_author, :description, :fun_facts, :main_photo_credit, :user_id, :city, :fact_checked, :district, :favoritable_total, :favoritable_score, :main_picture, :created_at
    # json.user building.user, :id, :name, :location, :description, :phone_number, :open_id, :avatar
  end
end
