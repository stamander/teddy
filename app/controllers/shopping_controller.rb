class ShoppingController < ApplicationController
  def index
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


end
