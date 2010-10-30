class ChangeColumn < ActiveRecord::Migration
  def self.up
    rename_column :activities, :activity, :name 
    rename_column :sports, :sport, :name 
  end

  def self.down
  end
end
