class MoviesController < ApplicationController
  before_action :require_admin, except: [:show, :index]
  
  def show 
    @movie = Movie.find(params[:id])
  end

  def index 
    if session[:is_admin?]
      @movies = Movie.all
    else
      @movies = Movie.now_playing
    end
  end 

  #todo card deck limit for single row

  def new
    @movie = Movie.new
  end

  def create
    movie = Movie.create(movie_params)
    if movie.persisted?
      flash[:success] = "Movie created successfully!"
      redirect_to new_movie_showing_path(movie)
    else
      flash[:danger] = movie.errors.full_messages.to_sentence
      redirect_to new_movie_path
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    movie = Movie.find(params[:id])
    if movie.update_attributes(movie_params)
      flash[:success] = "Movie updated successfully!"
      redirect_to movie
    else   
      flash[:danger] = movie.errors.full_messages.to_sentence
      redirect_to edit_movie_path(movie)
    end
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
    flash[:warning] = "Movie deleted sucessfully"
    redirect_to root_path
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :description, :genre, :rating, :duration, :poster_url)
  end

end