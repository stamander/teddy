class ShoppingController < ApplicationController
  def index
    @shopping = Shopping.includes(:images)
  end

  def create
    @shopping = Shopping.new(shop_params)
    if @shopping.save
      redirect_to shopping_index_path
    else
      redirect_to new_shopping_path
    end

  end



  def new
    @shopping = Shopping.new
    @shopping.images.new
  end


  def show

    @shopping = Shopping.find_by(id:params[:id])

  end


  def purchase
    @shopping = Shopping.find_by(id:params[:id])
  end

  private
  def shop_params
    params.require(:shopping).permit(:name,:price,:explain,:number,images_attributes: [:src]) 
  end



end
