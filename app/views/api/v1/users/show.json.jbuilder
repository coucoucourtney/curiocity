json.extract! @user,  :id, :open_id, :wechat_name, :avatar, :email, :language, :gender, :level, :description, :favoritor_score, :favoritor_total, :favoritable_score, :favoritable_total

  if !@user.buildings.nil?
    json.buildings do
      json.array! @user.buildings do |building|
        json.extract! building, :id, :name, :year, :architects, :neighborhood, :metro_stop, :photo_slider, :address, :latitude, :longitude, :architectural_style, :contributor_author, :description, :fun_facts, :main_photo_credit, :user_id, :city, :fact_checked, :district, :favoritable_total, :favoritable_score, :main_picture
      end
    end
end
