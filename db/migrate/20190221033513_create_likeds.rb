class CreateLikeds < ActiveRecord::Migration[5.2]
  def change
    create_table :likeds do |t|
      t.references :user, foreign_key: true
      t.references :story, foreign_key: true

      t.timestamps
    end
    add_index :likeds, [:user_id, :created_at]
    add_index :likeds, [:story_id, :created_at]
  end
end
