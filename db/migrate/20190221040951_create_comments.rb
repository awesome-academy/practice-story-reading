class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :commentable_id
      t.string :commentable_type
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :comments, [:user_id, :created_at]
  end
end
