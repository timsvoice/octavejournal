class CreateArticlesIssuesTable < ActiveRecord::Migration
  def change
    create_table :articles_issues_tables do |t|
      t.integer :article_id
      t.integer :issue_id
    end
  end
end

