class CreateCheckpoints < ActiveRecord::Migration[5.2]
  def change
    create_table :checkpoints do |t|
      t.references :building, foreign_key: true
      t.references :route, foreign_key: true

      t.timestamps
    end
  end
end
