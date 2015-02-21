class AddFullNameToJudges < ActiveRecord::Migration
  def change
    add_column :judges, :full_name, :string
  end
end
