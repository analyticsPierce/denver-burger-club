class AddAverageServiceToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :avg_service, :decimal
  end
end
