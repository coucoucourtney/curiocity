class CreateRoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :routes do |t|
      t.float :approximate_duration
      t.float :approximate_distance
      t.references :user, foreign_key: true
      t.float :start_long
      t.float :start_lat
      t.float :end_long
      t.float :end_lat
      t.float :radius_search
      t.string :main_picture
      t.string :district
      t.string :favoritable_score
      t.string :favoritable_total
      t.string :name
      t.string :metro_station_stop
      t.string :metro_station_start
      t.text :description

      t.timestamps
    end
  end
end
