class RemoveLanguageFromIssues < ActiveRecord::Migration
  def change
    remove_column :issues, :language, :string
  end
end
