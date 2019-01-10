class AddAveragePresentationToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :avg_presentation, :decimal
  end
end
