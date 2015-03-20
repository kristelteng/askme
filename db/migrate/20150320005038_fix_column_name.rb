class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :answers, :article_id, :question_id
  end
end
