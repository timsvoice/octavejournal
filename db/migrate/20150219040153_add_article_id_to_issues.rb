class AddArticleIdToIssues < ActiveRecord::Migration
  def change
    add_column :issues, :article_id, :integer
  end
end
