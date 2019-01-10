class AddAverageMeatDoneToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :avg_meat_done, :decimal
  end
end
