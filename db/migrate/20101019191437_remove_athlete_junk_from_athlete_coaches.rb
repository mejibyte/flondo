class RemoveAthleteJunkFromAthleteCoaches < ActiveRecord::Migration
  def self.up
        remove_column :athletes_coaches, :created_at
        remove_column :athletes_coaches, :updated_at
  end

  def self.down
  end
end
