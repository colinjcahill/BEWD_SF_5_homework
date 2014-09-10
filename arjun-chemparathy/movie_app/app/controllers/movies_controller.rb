class MoviesController < ApplicationController
  def index
  	@display_movies = Movie.all
  end
end