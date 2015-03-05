class ChangeArticleStringsToText < ActiveRecord::Migration
  def up
      change_column :articles, :introduction, :text
      remove_column :articles, :title_cn
      remove_column :articles, :introduction_cn
      remove_column :articles, :body_cn
  end
  def down
      # This might cause trouble if you have strings longer
      # than 255 characters.
      change_column :issues, :introduction, :string
  end
end

