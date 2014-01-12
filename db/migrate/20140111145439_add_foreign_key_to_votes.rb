class AddForeignKeyToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :group_id, :integer
    add_index :votes, :group_id
  end
end
