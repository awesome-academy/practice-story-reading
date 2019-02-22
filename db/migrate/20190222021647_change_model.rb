class ChangeModel < ActiveRecord::Migration[5.2]
  def change
    remove_reference :users, :permission
    remove_reference :stories, :user
    remove_reference :likeds, :user
    remove_reference :likeds, :story
    remove_reference :story_categories, :category
    remove_reference :story_categories, :story
    remove_reference :chapters, :story
    remove_reference :comments, :user

    add_column :users, :permission_id, :integer
    add_column :stories, :user_id, :integer
    add_column :likeds, :user_id, :integer
    add_column :likeds, :story_id, :integer
    add_column :story_categories, :category_id, :integer
    add_column :story_categories, :story_id, :integer
    add_column :chapters, :story_id, :integer
    add_column :comments, :user_id, :integer
  end
end
