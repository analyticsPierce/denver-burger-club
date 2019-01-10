class AddAverageSidesToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :avg_sides, :decimal
  end
end
