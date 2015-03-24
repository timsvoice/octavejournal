class AddArticleLanToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :article_lan, :string
  end
end
