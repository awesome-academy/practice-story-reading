class CreateFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :feedbacks do |t|
      t.string :content
      t.string :email

      t.timestamps
    end
  end
end
