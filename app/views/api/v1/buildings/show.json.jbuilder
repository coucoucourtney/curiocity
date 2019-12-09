json.extract! @building, :id, :name, :year, :architects, :neighborhood, :metro_stop, :photo_slider, :address, :latitude, :longitude, :architectural_style, :contributor_author, :description, :fun_facts, :main_photo_credit, :user_id, :city, :fact_checked, :district, :favoritable_total, :favoritable_score, :main_picture

json.favorited @building.favorited_by?(@current_user)
json.favoritable_total @building.f_total
json.favoritable_count @building.f_total
# if !@building.user.nil?
#   json.building do
#     json.array! @building.user do |data|
#       json.extract! data, :id, :open_id, :wechat_name, :avatar, :email, :language, :description, :favoritor_score, :favoritor_total, :favoritable_score, :favoritable_total
#       json.commented_at booking.created_at.strftime("%A, %b %d")
#     end
#   end

if !@building.user.nil?
  json.user do
    json.extract! @building.user, :id, :open_id, :wechat_name, :avatar, :email, :language, :description, :favoritor_score, :favoritor_total, :favoritable_score, :favoritable_total
    json.total_building @building.user.buildings.length
  end

  # json.favorited do
  #   json.extract! @favorited, :favorited
  # end
end



