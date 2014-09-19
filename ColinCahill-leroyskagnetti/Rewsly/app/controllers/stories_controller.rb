class StoriesController < ApplicationController

    before_action :authenticate_user!, except: [:index, :show]

  def new
    @story = Story.new
  end

  def index
    @stories = Story.search_for(params[:q])
  end

  def create
    @story = Story.new story_params
    if @story.save
      redirect_to @story, notice: "Story was saved!"
    else
      render 'new'
    end
  end

  def edit
    @story = Story.find params[:id]
  end

  def update
    @story = Story.find params[:id]
    
    if @story.update(story_params)
      redirect_to @story, notice: "Story was updated!"
    else
      render 'edit'
    end
  end

  def show
    @story = Story.find params[:id]
  end

  private

  def set_story
    @story = Story.find params[:id]
  end

  def story_params
    params.require(:story).permit(:title, :category, :upvotes, :link)
  end
end
