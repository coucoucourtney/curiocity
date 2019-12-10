class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :level, :integer, default: 0, null: false
  end
end
