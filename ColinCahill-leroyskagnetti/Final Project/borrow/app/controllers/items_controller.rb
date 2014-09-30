class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.create(params.require(:item).permit(:name, :description, :category, :value, :image_path, :tags, :deterioration))
  end

  def index
    @items = Item.all
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

end
