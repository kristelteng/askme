class RemoveUserIdFromQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :user_id
  end
end