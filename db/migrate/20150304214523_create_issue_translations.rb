class CreateIssueTranslations < ActiveRecord::Migration
  def self.up
    Issue.create_translation_table!({
      :title => :text,
      :introduction => :text,
      :summary => :text
    }, {
      :migrate_data => true
    })
  end

  def self.down
    Issue.drop_translation_table! :migrate_data => true
  end
end