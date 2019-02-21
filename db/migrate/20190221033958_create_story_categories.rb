class CreateStoryCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :story_categories do |t|
      t.references :category, foreign_key: true
      t.references :story, foreign_key: true

      t.timestamps
    end
    add_index :story_categories, [:category_id, :created_at]
    add_index :story_categories, [:story_id, :created_at]
  end
end
