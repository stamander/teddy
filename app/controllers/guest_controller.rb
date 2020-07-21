class GuestController < ApplicationController

  def index
    
    @guests = Guest.all
    
  end


  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.new(guest_params)
    if @guest.save
      flash[:denger] = "ありがとうございます。商品を承りました"
      redirect_to new_guest_path
    else 
      flash[:denger] = "まだ未入力のものがあります。"
      redirect_to new_guest_path
    end

  end


  def destroy
    @guest = Guest.find_by(id:params[:id])
    @guest.destroy
    redirect_to guest_index_path

  end




  private
  def guest_params
    params.require(:guest).permit(:name,:kana,:phone_number,:mail,:adress_number,:adress,:number) 
  end





end
