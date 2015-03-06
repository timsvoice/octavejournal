class ChangeIssueTranslationsStringsToText < ActiveRecord::Migration
  def up
      change_column :issue_translations, :title, :text
      change_column :issue_translations, :introduction, :text
  end
  def down
      # This might cause trouble if you have strings longer
      # than 255 characters.
      change_column :issues, :title, :string
      change_column :issues, :introduction, :string
  end
end
