class ChangeJudgeToJudgeIdInReview < ActiveRecord::Migration
  def change
    add_reference :reviews, :judge, index: true 
    remove_column :reviews, :judge, :string
  end
end
