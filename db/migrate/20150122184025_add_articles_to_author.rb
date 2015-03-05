class AddArticlesToAuthor < ActiveRecord::Migration
  def change
    add_column :authors, :article_id, :integer
  end
end
