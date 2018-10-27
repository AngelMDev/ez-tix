class ShowingsController < ApplicationController

  def show
    @showing = Showing.find(params[:id])
    @movie = @showing.movie
  end

end