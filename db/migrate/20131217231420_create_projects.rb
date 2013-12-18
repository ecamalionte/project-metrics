class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.integer :status
      t.date :started_on
      t.date :dead_line

      t.timestamps
    end
  end
end
