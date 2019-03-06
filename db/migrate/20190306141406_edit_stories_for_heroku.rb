class EditStoriesForHeroku < ActiveRecord::Migration[5.2]
  def change
    drop_table :stories

    create_table :stories do |t|
      t.string :name
      t.text :image
      t.text :description
      t.string :author
      t.integer :process
      t.integer :status
      t.integer :user_id

      t.timestamps
    end
    add_index :stories , [:user_id, :created_at]
    change_column_default :stories, :process, 0
    change_column_default :stories, :status, 0
  end
end
