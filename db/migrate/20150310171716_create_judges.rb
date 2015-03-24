class CreateJudges < ActiveRecord::Migration
  def change
    create_table :judges do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_addr

      t.timestamps null: false
    end
  end
end
