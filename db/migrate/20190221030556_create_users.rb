class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :account
      t.string :email
      t.integer :status
      t.references :permission, foreign_key: true

      t.timestamps
    end
    add_index :users, [:permission_id, :created_at]
  end
end
