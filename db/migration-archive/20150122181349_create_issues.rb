class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :title
      t.string :feature_image
      t.string :language
      t.string :introduction
      t.string :summary

      t.timestamps
    end
  end
end
