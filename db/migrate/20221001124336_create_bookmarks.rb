class CreateBookmarks < ActiveRecord::Migration[6.1]
  def change
    create_table :bookmarks do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :station_code, null: false

      t.timestamps
    end
    add_foreign_key :bookmarks, :stations, column: :station_code , primary_key: :station_code
    add_index :bookmarks, [:user_id, :station_code], unique: true
  end
end
