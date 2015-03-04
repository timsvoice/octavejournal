class ChangeIssueStringsToText < ActiveRecord::Migration
  def up
      change_column :issues, :title, :text
      change_column :issues, :title_cn, :text
      change_column :issues, :introduction, :text
      change_column :issues, :introduction_cn, :text
      change_column :issues, :summary, :text
      change_column :issues, :summary_cn, :text
  end
  def down
      # This might cause trouble if you have strings longer
      # than 255 characters.
      change_column :issues, :title, :string
      change_column :issues, :title_cn, :string
      change_column :issues, :introduction, :string
      change_column :issues, :introduction_cn, :string
      change_column :issues, :summary, :string
      change_column :issues, :summary_cn, :string
  end
end