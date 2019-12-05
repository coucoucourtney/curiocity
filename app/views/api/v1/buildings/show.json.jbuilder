json.extract! @building, :id, :name, :year, :architects, :neighborhood, :metro_stop, :photo_slider, :address, :latitude, :longitude, :architectural_style, :contributor_author, :description, :fun_facts, :main_photo_credit, :user_id, :city, :fact_checked, :district, :favoritable_total, :favoritable_score, :main_picture
# if !@building.user.nil?
#   json.building do
#     json.array! @building.user do |data|
#       json.extract! data, :id, :open_id, :wechat_name, :avatar, :email, :language, :level, :description, :favoritor_score, :favoritor_total, :favoritable_score, :favoritable_total
#       json.commented_at booking.created_at.strftime("%A, %b %d")
#     end
#   end
  if !@building.user.nil?
  json.user do
  json.extract! @building.user, :id, :open_id, :wechat_name, :avatar, :email, :language, :level, :description, :favoritor_score, :favoritor_total, :favoritable_score, :favoritable_total
  end
end
