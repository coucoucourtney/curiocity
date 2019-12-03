class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :level, :string
    add_column :users, :description, :text
    add_column :users, :favoritor_score, :string
    add_column :users, :favoritor_total, :string
    add_column :users, :favoritable_score, :string
    add_column :users, :favoritable_total, :string
  end
end
