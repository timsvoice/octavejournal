class AddCnColumnsToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :title_cn, :string
    add_column :articles, :introduction_cn, :string
    add_column :articles, :body_cn, :string
  end
end