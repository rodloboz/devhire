class CreateBookmarks < ActiveRecord::Migration[5.2]
  def change
    create_table :bookmarks do |t|
      t.references :user, foreign_key: true
      t.references :bookmarked, polymorphic: true, index: true

      t.timestamps
    end
  end
end
