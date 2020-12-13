class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :title, null: false
      t.integer :genre_id, null: false
      t.string :artwork, null: false
      t.integer :evaluation_id, null: false
      t.text :text, null: false
      t.integer :user_id

      t.timestamps
    end
  end
end
