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



  def destroy
    @shopping = Shopping.find_by(id:params[:id])
    @shopping.destroy
    redirect_to shopping_index_path


  end


  def edit
    @shopping = Shopping.find_by(id: params[:id])
  end
  def update
    @shopping = Shopping.find_by(id: params[:id])
    @shopping.update(shop_params)
    redirect_to shopping_index_path,notice: '商品を編集しました'
  end


  def purchase
    @shopping = Shopping.find_by(id:params[:id])
  end



  def pay
    @shopping = Shopping.find(params[:id])
    Payjp.api_key =  Rails.application.credentials.payjp[:secret_key]
    charge = Payjp::Charge.create(
    amount: @shopping.price,
    card: params['payjp-token'],
    currency: 'jpy'
    )
    redirect_to  done_shopping_index_path
  end

  private
  def shop_params
    params.require(:shopping).permit(:name,:price,:explain,:number,images_attributes: [:src]) 
  end



end
