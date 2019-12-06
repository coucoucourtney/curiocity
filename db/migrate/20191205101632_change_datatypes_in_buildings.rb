class ChangeDatatypesInBuildings < ActiveRecord::Migration[5.2]
  def change
    change_column :buildings, :favoritable_total, :text
    change_column :buildings, :favoritable_score, :text
  end
end
