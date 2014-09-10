class MoviesController < ApplicationController
	def new
	  	@movie = Movie.new
	  end

	  def show
	end

	def create
	  	@movie = Movie.new movie_params
	    if @movie.save
	      redirect_to movies_path, notice: "Movie was saved!"
	    else
	      render 'new'
	  	end
	end

	def update
		if @movie.update(movie_params)
		  redirect_to @movie, notice: "Movie was updated!"
		else
		  render 'edit'
		end
	end

	  def index
	  	@movies = Movie.search_for(params[:q])
	  end

	  def movie_params
	    params.require(:movie).permit(:title, :description, :year_released, :rating)
	  end

	  def set_movie
	    @movie = Movie.find params[:id]
	  end

end
