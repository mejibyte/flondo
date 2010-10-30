class Dropidfromathletecoaches < ActiveRecord::Migration
  def self.up
    remove_column :athletes_coaches, :id
  end

  def self.down
  end
end
