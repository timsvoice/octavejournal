class DropArticleIssueTable < ActiveRecord::Migration
  def change
    drop_table :articles_issues
  end
end