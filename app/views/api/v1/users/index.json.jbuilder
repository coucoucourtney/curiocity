json.user do
  json.array! @users do |user|
    json.extract! user, :open_id, :wechat_name, :avatar, :level, :description, :favoritor_score, :favoritor_total, :favoritable_score, :favoritable_total
    # json.user building.user, :id, :name, :location, :description, :phone_number, :open_id, :avatar
  end
end
