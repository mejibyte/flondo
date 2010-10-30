class LogEntriesController < ApplicationController
  before_filter :authenticate_user!
  def new 
    @athlete = current_user
    @log_entry = LogEntry.new
    @log_entry.workouts.build 
  end
  def create
    @log_entry = LogEntry.create(params[:log_entry])
    if @log_entry.save
      redirect_to sports_path
    else
      render :action => "new"
    end
  end
    def show
      @athlete = current_user
      @entries = @athlete.log_entries
    end
end
