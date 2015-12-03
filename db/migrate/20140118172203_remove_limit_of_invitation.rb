class RemoveLimitOfInvitation < ActiveRecord::Migration
  def change
    remove_column :users, :invitation_limit
  end
end
