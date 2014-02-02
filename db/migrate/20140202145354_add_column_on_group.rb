class AddColumnOnGroup < ActiveRecord::Migration
  def change
    add_column :groups, :number, :integer
    add_column :groups, :block, :string
  end
end
