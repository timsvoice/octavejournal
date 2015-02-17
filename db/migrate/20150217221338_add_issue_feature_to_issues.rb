class AddIssueFeatureToIssues < ActiveRecord::Migration
  def change
    add_column :issues, :issue_feature, :string
  end
end
