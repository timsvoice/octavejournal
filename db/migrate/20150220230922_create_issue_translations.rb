class CreateIssueTranslations < ActiveRecord::Migration
  def up
    Issue.create_translation_table!({
      title: :string,
      introduction: :string,
      summary: :text
      }, {
        migrate_data: true
        })
  end
  def down
    Issue.drop_translation_table! migrate_data: true
  end
end
