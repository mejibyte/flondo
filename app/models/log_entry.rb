class LogEntry < ActiveRecord::Base
  has_many :workouts
  belongs_to :athlete
  
  def workout_attributes=(workout_attributes)
    workout_attributes.each do |attributes|
      workouts.build(attributes)
    end
  end
end
