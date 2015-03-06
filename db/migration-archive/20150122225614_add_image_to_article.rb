class AddImageToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :article_feature, :string
  end
end
