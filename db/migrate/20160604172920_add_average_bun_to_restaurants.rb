class AddAverageBunToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :avg_bun, :decimal
  end
end
