class DropArticlesTranslationTable < ActiveRecord::Migration
  def change
    drop_table :article_translations
    drop_table :issue_translations
  end
end