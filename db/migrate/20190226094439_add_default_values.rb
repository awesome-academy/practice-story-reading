class AddDefaultValues < ActiveRecord::Migration[5.2]
  def change
    change_column_default :users, :permission_id, 1
    change_column_default :stories, :process, 0
    change_column_default :users, :status, 0
  end
end
