class ClassifiedsController < ApplicationController
  
  def new
    @classified = Classified.new
    @categories = Category.all
  end

  def create
    @classified = Classified.new(classified_params)
      if @classified.save
        redirect_to @

  end

  def show
  end

  def edit
  end

  def update
  end

  def index
  end

  def destroy
  end

  def classified_params
    params.require('classified').permit(:title, :description, :price)
  end
end
