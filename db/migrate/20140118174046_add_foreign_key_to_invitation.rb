class AddForeignKeyToInvitation < ActiveRecord::Migration
  def change
    add_column :invitations, :group_id, :integer
    add_column :invitations, :role_id, :integer
    add_index :invitations, :group_id
    add_index :invitations, :role_id
  end
end
