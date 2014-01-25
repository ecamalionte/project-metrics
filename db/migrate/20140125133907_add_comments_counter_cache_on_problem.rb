class AddCommentsCounterCacheOnProblem < ActiveRecord::Migration
  def self.up
    add_column :problems, :comments_count, :integer, :default => 0

    Problem.reset_column_information
    Problem.find(:all).each do |p|
      Problem.update_counters p.id, :comments_count => p.comments.length
    end
  end

  def self.down
    remove_column :problems, :comments_count
  end
end
