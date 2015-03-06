class DeleteIssueIdFromArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :issue_id, :integer
  end
end
