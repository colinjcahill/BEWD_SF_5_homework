class ItemsController < ApplicationController
before_action :authenticate_user!, except: [:index, :show]

  def new
    @item = Item.new
  end
  def create
    @item = Item.create(self.item_params)
    @item.user_id = current_user.id
     if @item.save
      redirect_to @item, notice: "Item successfully created!"
    else
      render 'new'
    end
  end

  def index
    if current_user && (params[:user_id].to_i == current_user.id) == true
      @items = Item.where(user_id: current_user.id)
    else
      @items = Item.all
    end    
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

  def item_params
    params.require(:item).permit(:name, :description, :category, :value, :image_path, :tags, :condition, :user_id)
  end

end
