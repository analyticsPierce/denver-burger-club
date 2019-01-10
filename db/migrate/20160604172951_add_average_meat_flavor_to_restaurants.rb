class AddAverageMeatFlavorToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :avg_meat_flavor, :decimal
  end
end
