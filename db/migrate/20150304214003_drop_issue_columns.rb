class DropIssueColumns < ActiveRecord::Migration
  def change
    remove_column :issues, :title_cn
    remove_column :issues, :introduction_cn
    remove_column :issues, :summary_cn
  end
end
