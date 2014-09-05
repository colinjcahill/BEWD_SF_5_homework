class MoviesController < ApplicationController
  def new
  end

  def show
  end

  def update
  end

  def index
  	@movies = Movie.all 
  end
end
