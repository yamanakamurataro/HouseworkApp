class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :housework_type_id
      t.integer :worker_id
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
