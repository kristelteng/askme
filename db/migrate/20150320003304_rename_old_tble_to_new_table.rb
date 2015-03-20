class RenameOldTbleToNewTable < ActiveRecord::Migration
  def change
    rename_table :articles, :questions
    rename_table :comments, :answers
  end
end
