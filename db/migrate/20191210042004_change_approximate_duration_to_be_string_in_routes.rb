class ChangeApproximateDurationToBeStringInRoutes < ActiveRecord::Migration[5.2]
  def change
    change_column :routes, :approximate_duration, :string
  end
end
