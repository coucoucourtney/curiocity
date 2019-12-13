json.buildings do
  json.array! @buildings do |building|
    json.extract! building, :id, :name, :year, :architects, :neighborhood, :metro_stop, :photo_slider, :address, :latitude, :longitude, :architectural_style, :contributor_author, :description, :fun_facts, :main_photo_credit, :user_id, :city, :fact_checked, :district, :favoritable_total, :favoritable_score, :main_picture, :old_address, :created_at
    if !building.user.nil?
      json.user building.user, :id, :open_id, :wechat_name, :avatar, :email, :language, :description, :favoritor_score, :favoritor_total, :favoritable_score, :favoritable_total, :user_type
    end
    if @user_signed_in
      json.favorited building.favorited_by?(@user_signed_in)
      json.favoritable_total building.f_total
      json.favoritable_count building.f_total
    end
  end
end
