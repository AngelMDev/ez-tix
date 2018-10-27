class MoviesController < ApplicationController

  def show 
    @movie = Movie.find(params[:id])
  end

  def index 
    @movies = Movie.playing_now
  end 

  def new
    @movie = Movie.new
  end

  def create
    movie = Movie.create(movie_params)
    if movie.persisted?
      redirect_to new_movie_showing_path(movie)
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :description, :genre, :rating, :duration)
  end

end