class ShowingsController < ApplicationController

  before_action :require_admin, except: :show
  
  def show
    @showing = Showing.find(params[:id])
    @movie = @showing.movie
  end

  def new
    @movie = Movie.find(params[:movie_id])
    @auditorium_list = Auditorium.all.ids
    @showing = Showing.new
  end

  def create
    @showing = Showing.create(showing_params)
    respond_to do |format|
      if @showing.persisted? 
        format.html { redirect_to @showing }
        format.js
        #format.json { render json: @showing }
      else
        format.html { render action: "new" }
        format.js
        format.json { render json: @showing.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @showing = Showing.find(params[:id])
    @showing.destroy
    respond_to do |format|
      format.html { redirect_to movies_path }
      format.js
    end
  end

  private

  def showing_params
    params.require(:showing).permit(:datetime, :auditorium_id, :movie_id)
  end

end