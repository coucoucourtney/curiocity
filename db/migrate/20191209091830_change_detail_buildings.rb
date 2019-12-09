class ChangeDetailBuildings < ActiveRecord::Migration[5.2]
  def change
    change_column_default :buildings, :photo_slider, []
  end
end
