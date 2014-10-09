class ItemsController < ApplicationController
before_action :authenticate_user!, except: [:index, :show]

  

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

  def new
    @item = Item.new
  end

  def create
    @item = Item.create(self.item_params)
    @item.user_id = current_user.id
    if @item.save
      redirect_to @item, notice: "Item successfully created!"
    else
      flash[:errors] = @item.errors
      render 'new'
    end
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
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path({user_id: current_user.id}), notice: "Your item listing, #{@item.name}, has been deleted."
  end

  def item_params
    params.require(:item).permit(:name, :description, :category_id, :value, :image_path, :tags, :condition, :user_id)
  end

end
