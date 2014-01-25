class AddCommentsCounterCache < ActiveRecord::Migration
  def self.up
    add_column :projects, :comments_count, :integer, :default => 0

    Project.reset_column_information
    Project.find(:all).each do |p|
      Project.update_counters p.id, :comments_count => p.comments.length
    end
  end

  def self.down
    remove_column :projects, :comments_count
  end
end
