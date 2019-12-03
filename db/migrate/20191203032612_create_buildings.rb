class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :year
      t.string :architects
      t.string :neighborhood
      t.string :metro_stop
      t.string :main_picture
      t.text :photo_slider, array: true, default: []
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :architectural_style
      t.string :contributor_author
      t.text :description
      t.string :fun_facts
      t.string :main_photo_credit
      t.references :user, foreign_key: true
      t.string :city
      t.boolean :fact_checked
      t.string :district
      t.string :favoritable_total
      t.string :favoritable_score

      t.timestamps
    end
  end
end
