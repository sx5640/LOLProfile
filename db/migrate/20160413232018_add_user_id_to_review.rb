class AddUserIdToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :user_id, :integer
    add_column :reviews, :champion_id, :integer
  end
end
