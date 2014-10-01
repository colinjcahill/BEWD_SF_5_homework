class ItemsController < ApplicationController
before_action :authenticate_user!, except: [:index, :show]

  def new
    @item = Item.new
  end
  def create
    @item = Item.create(params.require(:item).permit(:name, :description, :category, :value, :image_path, :tags, :condition))
    @item.user_id = current_user.id
    binding.pry
     if @item.save
      redirect_to @item, notice: "Item successfully created!"
    else
      render 'new'
    end
  end

  def index
    @items = Item.all
  end

  def edit
  end

  def update
  end

  def show
    @item = Item.find(params[:id])
  end

  def destroy
  end

end
