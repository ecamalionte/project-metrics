class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.integer :progress_rate
      t.date :started_at
      t.date :dead_line_at

      t.timestamps
    end
  end
end
