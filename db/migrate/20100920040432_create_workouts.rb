class CreateWorkouts < ActiveRecord::Migration
  def self.up
    create_table :workouts do |t|
      t.integer :duration
      t.string :time_of_day
      t.string :activity_id
      t.integer :log_entry_id
      t.integer :zone
      t.text :summary

      t.timestamps
    end
  end

  def self.down
    drop_table :workouts
  end
end
