class CreateChapters < ActiveRecord::Migration[5.2]
  def change
    create_table :chapters do |t|
      t.string :name
      t.text :image
      t.text :content
      t.integer :status
      t.references :story, foreign_key: true

      t.timestamps
    end
    add_index :chapters, [:story_id, :created_at]
  end
end
