class StoriesController < ApplicationController
  def index
  	if params[:q]
  	@stories = Story.where("title LIKE ? OR category LIKE ?", "%#{params[:q]}%", "%#{params[:q]}%")
  	else 
  	@stories = Story.where("strftime('%Y-%m-%d', created_at) = ?", Date.today + 1)
  	end
  end

  def new
  	@story = Story.new
  end

  def show
  	@story = Story.find params[:id]
  end

  def create
  	@story = Story.new story_params
  	if @story.save
  		redirect_to root_path
  	else
  	end
  end

  private
  def story_params
  	params.require(:story).permit(:title, :link, :upvotes, :category)
  end

end
