class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :site
      t.string :phone_number
      t.text :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.string :email_addr
      t.date :review_date

      t.timestamps null: false
    end
  end
end
