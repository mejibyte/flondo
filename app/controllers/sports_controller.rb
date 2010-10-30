class SportsController < ApplicationController
  before_filter :authenticate_user!
    def index
      @sports = Sport.all
    end

    def new
      @sport = Sport.new
    end

    def edit
      @sport = Sport.find(params[:id])
    end

    def create 
      @sport = Sport.create(params[:sport])
      if @sport.save
        redirect_to sports_path
      else
        render :action => "new"
      end
    end

    def update
      @sport = Sport.find(params[:id])
      if @sport.update_attributes(params[:sport])
        redirect_to activities_path
      else
        render :action => "edit"
      end
    end

    def destroy
      @sport = Sport.find(params[:id])
      @sport.destroy
      redirect_to activities_path
    end
  end
