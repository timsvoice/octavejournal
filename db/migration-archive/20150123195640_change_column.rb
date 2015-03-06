class ChangeColumn < ActiveRecord::Migration
    change_table :articles do |t|
      t.change :body, :text
    end
end
