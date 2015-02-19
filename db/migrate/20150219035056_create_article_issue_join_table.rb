class CreateArticleIssueJoinTable < ActiveRecord::Migration
  def change
      create_table :articles_issues do |t|
        t.integer :issue_id
        t.integer :article_id
      t.timestamps
    end
  end
end
