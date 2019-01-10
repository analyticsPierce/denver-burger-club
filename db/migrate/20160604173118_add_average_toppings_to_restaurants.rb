class AddAverageToppingsToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :avg_toppings, :decimal
  end
end
