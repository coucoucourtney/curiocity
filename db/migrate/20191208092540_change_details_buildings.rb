class ChangeDetailsBuildings < ActiveRecord::Migration[5.2]
  def change
    change_column_default :buildings, :year,  "unlisted"
    change_column_default :buildings, :architects, "unlisted"
    change_column_default :buildings, :neighborhood, "unlisted"
    change_column_default :buildings, :photo_slider, ["http://lc-lyUmBNQE.cn-n1.lcfile.com/47f0161f1e485e24e59d/robert-ruggiero-3cI1YSp1E7w-unsplash.jpg"]
    change_column_default :buildings, :architectural_style, "unlisted"
    change_column_default :buildings, :description, "Nothing here yet! Help add one :)"
    change_column_default :buildings, :fun_facts, "Nothing here yet!"
    change_column_default :buildings, :main_photo_credit, ""
    change_column_default :buildings, :description, "Nothing here yet! Help add one :)"
    change_column_default :buildings, :old_address, "unlisted"
  end
end
