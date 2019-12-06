class ChangeDatatypesInUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :favoritor_total, :text
    change_column :users, :favoritor_score, :text
    change_column :users, :favoritable_total, :text
    change_column :users, :favoritable_score, :text
  end
end
