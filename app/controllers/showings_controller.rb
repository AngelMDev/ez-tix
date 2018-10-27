class ShowingsController < ApplicationController

  def show
    @showing = Showing.find(params[:id])
    @movie = @showing.movie
  end

  def new
    @movie = Movie.find(params[:movie_id])
    @showing = Showing.new
  end

  def create
    showing = Showing.create(showing_params)
    if showing.persisted?
      # ajax response
    else

    end
  end

  private

  def showing_params
    params.require(:showing).permit(:datetime, :auditorium_id, :movie_id)
  end

end