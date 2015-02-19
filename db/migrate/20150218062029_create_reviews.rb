class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :restaurant
      t.string :judge
      t.integer :meat_flavor
      t.integer :meat_done
      t.integer :bun
      t.integer :toppings
      t.integer :sides
      t.integer :presentation
      t.integer :service
      t.integer :atmosphere

      t.timestamps null: false
    end
  end
end
