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
    if current_user == nil
      @items = Item.all.sort(updated_at: :desc)
    elsif (params[:user_id].to_i == current_user.id) == true
      @items = User.find(params[:user_id]).items
    else
      @items = Item.where.not(user_id: current_user.id).order(updated_at: :desc)
    end    
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
      if @item.save
        render :show
      else
        flash.now[:error] =  @item.errors[:name].join(". ")
        render :edit
        
      end
  end

  def show
    @item = Item.find(params[:id])
  end

  def destroy
  end

  def item_params
    params.require(:item).permit(:name, :description, :category_id, :value, :image_path, :tags, :condition, :user_id)
  end

end
