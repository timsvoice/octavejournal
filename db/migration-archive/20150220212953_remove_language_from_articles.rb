class RemoveLanguageFromArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :language, :string
  end
end
