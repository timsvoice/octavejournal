class AddCnColumnsToIssues < ActiveRecord::Migration
  def change
    add_column :issues, :title_cn, :string
    add_column :issues, :introduction_cn, :string
    add_column :issues, :summary_cn, :string
  end
end