class CreateAthletesCoaches < ActiveRecord::Migration
  def self.up
    create_table :athletes_coaches do |t|
      t.integer :athlete_id
      t.integer :coach_id

      t.timestamps
    end
  end

  def self.down
    drop_table :athletes_coaches
  end
end
