class DeleteArticleIdFromIssue < ActiveRecord::Migration
  def change
    remove_column :issues, :article_id, :integer
  end
end
