class ShoppingController < ApplicationController
  def index
    @shopping = Shopping.includes(:images)
  end

  def create
    @shopping = Shopping.new(shop_params)
    if @shopping.sava
      redirect_to shopping_index_path
    else
      redirect_to new_shopping_path
    end

  end



  def new
    @shopping = Shopping.new
    @images = Images.new
  end


  def show

    @shopping = Shopping.find_by(id:params[:id])

  end

  private
  def shop_params
    params.require(:shopping).permit(:name,:price,:explain,:number,images_attributes: [:src]) 
  end



end
