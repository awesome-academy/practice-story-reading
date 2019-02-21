class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.string :name
      t.text :image
      t.text :description
      t.string :author
      t.integer :process
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :stories , [:user_id, :created_at]
  end
end
