class MoviesController < ApplicationController
  def index
  	@movies = Movie.all
  end
  def show
  	@movie = Movie.find params[:id]
  end
  def new
  	@movie = Movie.new
  end
  def edit
  	@movie = Movie.find params[:id]
  end
  def create
  	@movie = Movie.new movie_params
  	if @movie.save
  		redirect_to movie_path(@movie.id)
  	else
  		render 'edit'
  	end
  end
  private
  def movie_params
  	params.require(:movie).permit(:title, :description, :year_released, :rating)
  end
end
