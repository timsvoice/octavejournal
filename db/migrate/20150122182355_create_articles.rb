class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :introduction
      t.string :author
      t.string :language

      t.timestamps
    end
  end
end
