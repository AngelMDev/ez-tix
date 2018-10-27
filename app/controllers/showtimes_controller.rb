class ShowtimesController < ApplicationController

  def show
    @showtime = Showtime.find(params[:id])
    @movie = @showtime.movie
  end

end