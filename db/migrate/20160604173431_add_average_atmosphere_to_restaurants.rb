class AddAverageAtmosphereToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :avg_atmosphere, :decimal
  end
end
