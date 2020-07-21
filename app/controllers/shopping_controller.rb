class ShoppingController < ApplicationController
  def index
  end

  def create
  end

  

  def new
    @shopping = Shopping.new
    @images = Images.new
  end


end
