class AddAverageOverallToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :avg_overall, :decimal
  end
end
