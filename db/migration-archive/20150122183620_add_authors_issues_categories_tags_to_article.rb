class AddAuthorsIssuesCategoriesTagsToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :issue_id, :integer
    add_column :articles, :author_id, :integer
    add_column :articles, :category_id, :integer
    add_column :articles, :tag_id, :integer
  end
end
