class ChangeNameColumnUser < ActiveRecord::Migration
  def change
    remove_column :users, :role
    add_column :users, :role_id, :integer
    add_index :users, :role_id
  end
end
