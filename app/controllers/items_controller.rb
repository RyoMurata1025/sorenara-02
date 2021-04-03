class ItemsController < ApplicationController

  def index
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.create(item_params)
    if @item.save
      redirect_to root_path
    else
      redirect_to new_item_path
    end
  end
  
  private

  def item_params
    params.require(:item).permit(:name, :address, :information, :category_id, :user_id, :image).merge(user_id: current_user.id)
  end

end
