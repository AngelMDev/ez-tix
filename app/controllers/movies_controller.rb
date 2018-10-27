class MoviesController < ApplicationController
  def index 
    @movies = Movie.playing_now
  end 
end