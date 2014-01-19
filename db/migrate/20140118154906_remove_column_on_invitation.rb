class RemoveColumnOnInvitation < ActiveRecord::Migration
  def change
    remove_column :invitations, :new
  end
end
