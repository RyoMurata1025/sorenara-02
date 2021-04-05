class ItemsController < ApplicationController

  before_action :set_item, only: [:show, :edit]

  def index
    @items = Item.all.order("created_at DESC")
  end

  def new
    @item = Item.new
  end

  def show
  end

  def edit
  end


  def create
    @item = Item.create(item_params)
    if @item.save
      redirect_to root_path
    else
      render "new"
    end
  end
  
  private

  def item_params
    params.require(:item).permit(:name, :address, :information, :category_id, :user_id, :image).merge(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

end
